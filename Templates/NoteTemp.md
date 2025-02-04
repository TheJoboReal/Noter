---
tags:
  - lecture-slide
  - uni
course: <%*
    // Get all course files inside "Uni/Courses"
    let courseFiles = app.vault.getMarkdownFiles()
        .filter(file => file.path.startsWith("Uni/Courses/"));

    // Extract course names from file titles
    let courseNames = courseFiles.map(file => file.basename);

    // Prompt user to select a course
    let selectedCourse = await tp.system.suggester(courseNames, courseNames);
    tR += selectedCourse; // Return selected course
%>
lecture: <%*
    // Ensure a course is selected before proceeding
    if (!selectedCourse) {
        tR += "No Course Selected"; 
    } else {
        // Get all files in "Uni/Slides" with matching course
        let lectureFiles = app.vault.getMarkdownFiles()
            .filter(file => file.path.startsWith("Uni/Slides/"));

        // Extract lecture names based on the 'lecture' property inside the files
        let lectureMetadata = await Promise.all(lectureFiles.map(async (file) => {
            let metadata = await app.metadataCache.getFileCache(file);
            if (metadata?.frontmatter?.course === selectedCourse && metadata?.frontmatter?.lecture) {
                return metadata.frontmatter.lecture;
            }
            return null;
        }));

        // Filter out null values and remove duplicates
        let lectureNames = [...new Set(lectureMetadata.filter(name => name))];

        // Prompt user to select a lecture
        let selectedLecture = await tp.system.suggester(lectureNames, lectureNames);
        tR += selectedLecture; // Return selected lecture
    }
%>
date: <% tp.date.now('YYYY-MM-DD') %>
---

```dataviewjs
let currentCourse = dv.current().course; // Get the course property of the current note

if (!currentCourse) {
    dv.paragraph("⚠️ No 'course' property found in this file.");
} else {
    let folderPath = "Uni/Course"; // Base folder path
    let slidesFolder = "Uni/Slides"; // Folder for slides

    // Get all slides from Uni/Slides
    let slides = dv.pages(`"${slidesFolder}"`)
        .where(s => s.course && s.lecture); // Ensure slides have course & lecture properties

    // Find notes in Uni/Notes where course property matches current file
    let notes = dv.pages(`"${folderPath}"`)
        .where(p => p.course && p.course === currentCourse) // Match course property
        .sort(p => p.file.mtime, 'desc'); // Sort by last modified time

    if (notes.length === 0) {
        dv.paragraph("⚠️ No notes found for this course.");
    } else {
        // Display results in a table with "Lecture" column linking to slides
        dv.table(["Course"], 
            notes.map(p => {
                let lectureSlide = slides.find(s => s.course === p.course && s.lecture === p.lecture);
                return [
                    p.file.link, // File link
                    lectureSlide ? lectureSlide.file.link : "No Lecture Slides", // Link to matching slide or show warning
                    p.file.mtime // Last modified time
                ];
            })
        );
    }
}
```

#### Definition

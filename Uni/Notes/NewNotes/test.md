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

Course: [[<% await tp.user.waitForProperty("course") %>]]

#### Definition

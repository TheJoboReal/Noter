---
tags:
  - uni
  - course
semester: null
course: Linux Querks
Exam form: null
Exam Date: null
dato: 26-03-2025
---
### Notes
```dataviewjs
let currentCourse = dv.current().course; // Get the course property of the current note

if (!currentCourse) {
    dv.paragraph("⚠️ No 'course' property found in this file.");
} else {
    let folderPath = "Uni/Notes"; // Base folder path
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
        dv.table(["File Name", "Lecture", "Last Modified"], 
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

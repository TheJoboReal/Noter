---
tags:
  - uni
  - course
semester: Semester 7
course: Introduction to Drone Technologies
Exam form: Oral and Final Report
Exam Date: 31/01-2025
dato: 18-09-2025
---
Last Changed: `=dateformat(this.file.mtime, "yyyy-MM-dd - HH:mm")`

Book: 

---
### Lecture Notes
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

### Lecture Slides
```dataviewjs
let currentCourse = dv.current().course; // Get the course property of the current note

if (!currentCourse) {
    dv.paragraph("⚠️ No 'course' property found in this file.");
} else {
    let folderPath = "Uni/Slides"; // Base folder path

    // Find slides in Uni/Slides where course property matches the current file
    let slides = dv.pages(`"${folderPath}"`)
        .where(p => p.course && p.course == currentCourse) // Match course property
        .sort(p => p.file.mtime, 'desc'); // Sort by last modified time

    if (slides.length === 0) {
        dv.paragraph("⚠️ No slides found for this course.");
    } else {
        dv.table(["File Name", "Lecture", "Last Modified"], 
            slides.map(p => [
                p.file.link, // File link
                p.lecture ?? "No Lecture Info", // Display lecture property or fallback text
                p.file.mtime // Last modified time
            ])
        );
    }
}
```

---
## Assignments
```dataviewjs
let folderPath = "Uni/Assignments"; // Define the folder to search
let currentCourse = dv.current().course; // Get the course property of the current note

if (!currentCourse) {
    dv.paragraph("⚠️ No 'course' property found in this note.");
} else {
    // Find all assignments in the folder that match the same course
    let assignments = dv.pages(`"${folderPath}"`)
        .where(p => p.course === currentCourse) // Filter by course
        .sort(p => p.file.mtime, 'desc'); // Sort by last modified date

    // Display results in a table
    dv.table(["Assignment", "Due Date", "Last Modified", "Completed", "Progress"], 
        assignments.map(p => [
            p.file.link, // Assignment file link
            p.due_date ?? "No Due Date", // Due date or default text
            p.file.mtime, // Last modified date
            (p.completed === true || p.completed === "true") ? "✅ Completed" : "❌ Not Completed", // Completion status
            p.progress ?? "No Progress Info" // Display progress or fallback text
        ])
    );
}
```

---
## Exercises
```dataviewjs
let currentCourse = dv.current().course; // Get the course property of the current note

if (!currentCourse) {
    dv.paragraph("⚠️ No 'course' property found in this file.");
} else {
    let folderPath = "Uni/Exercises"; // Base folder path

    // Find notes in Uni/Notes where course property matches current file
    let notes = dv.pages(`"${folderPath}"`)
        .where(p => p.course && p.course == currentCourse) // Match course property
        .sort(p => p.file.mtime, 'desc'); // Sort by last modified time

    dv.table(["File Name", "Last Modified"], 
        notes.map(p => [p.file.link, p.file.mtime])
    );
}
```
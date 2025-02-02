---
tags:
  - uni
  - course
semester: Semester 5
course: Algoritmer og Datastruktur
Exam form: Written
Exam Date: 03-01-2025
dato: 02-02-2025
---
Last Changed: `=dateformat(this.file.mtime, "yyyy-MM-dd - HH:mm")`

---
### Lecture Notes
```dataviewjs
let currentCourse = dv.current().course; // Get the course property of the current note

if (!currentCourse) {
    dv.paragraph("⚠️ No 'course' property found in this file.");
} else {
    let folderPath = "Uni/Notes"; // Base folder path

    // Find notes in Uni/Notes where course property matches current file
    let notes = dv.pages(`"${folderPath}"`)
        .where(p => p.course && p.course == currentCourse) // Match course property
        .sort(p => p.file.mtime, 'desc'); // Sort by last modified time

    dv.table(["File Name", "Last Modified"], 
        notes.map(p => [p.file.link, p.file.mtime])
    );
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
    dv.table(["Assignment", "Due Date", "Last Modified", "Completed"], 
        assignments.map(p => [
            p.file.link, 
            p.due_date ?? "No Due Date", 
            p.file.mtime, 
            (p.completed === true || p.completed === "true") ? "✅ Completed" : "❌ Not Completed"
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

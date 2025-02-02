---
tags:
  - uni
Semester Start: 01-08-2024
Semester End: 31-01-2025
semester: Semester 5
---
Last Changed: `=dateformat(this.file.mtime, "yyyy-MM-dd - HH:mm")`

---
### Courses
```dataviewjs
// Get the semester of the current note
let currentSemester = dv.current().semester; 

// Define the target folder where courses are stored
let courseFolder = "Uni/Courses";

if (!currentSemester) {
    dv.paragraph("⚠️ No 'semester' property found in this note.");
} else {
    // Retrieve all pages from the Uni/Courses folder
    let matchingCourses = dv.pages(`"${courseFolder}"`)
        .where(p => p.semester == currentSemester); // Filter by semester

    if (matchingCourses.length == 0) {
        dv.paragraph(`📭 No courses found for Semester ${currentSemester}.`);
    } else {
        dv.table(["Course", "Semester", "Last Modified"], 
            matchingCourses
                .sort(p => p.file.mtime, 'desc') // Sort by last modified date
                .map(p => [p.file.link, p.semester, p.file.mtime])
        );
    }
}
```
---

## Assignments
```dataviewjs
let folderPath = "Uni/Assignments"; // Define the folder to search
let currentSem = dv.current().semester; // Get the course property of the current note

if (!currentSem) {
    dv.paragraph("⚠️ No 'course' property found in this note.");
} else {
    // Find all assignments in the folder that match the same course
    let assignments = dv.pages(`"${folderPath}"`)
        .where(p => p.course === currentSem) // Filter by course
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

---
tags:
  - uni
Semester Start: <%* tR += await tp.system.prompt("Enter the Semester Start date (DD-MM-YYYY):"); %>
Semester End: <%* tR += await tp.system.prompt("Enter the Semester End date (DD-MM-YYYY):"); %>
semester: <% tp.file.title %>
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
let assignmentFolder = "Uni/Assignments"; // Path to assignments folder

let assignments = dv.pages(`"${assignmentFolder}"`) // Get all assignment notes
    .sort(p => p.file.mtime, 'desc'); // Sort by last modified date

dv.table(["Assignment", "Due Date", "Completed"], 
    assignments.map(p => [
        p.file.link, // Assignment name as a clickable link
        p.date ? dv.date(p.date) : "❓ No Date", // Show due date (if available)
        p.completed ? p.completed : "❌ Not Completed" // Show completed status (default if missing)
    ])
);
```

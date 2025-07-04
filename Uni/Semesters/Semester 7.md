---
tags:
  - uni
  - semester
Semester Start: 01-08-2025
Semester End: 31-01-2026
semester: Semester 7
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
// Get the current file's semester
let currentSemester = dv.current().semester; // Assuming the current note has a 'semester' property

// If the current semester property is missing, show a warning
if (!currentSemester) {
    dv.paragraph("⚠️ Missing 'semester' property in the current note.");
} else {
    // Get all courses in the "Uni/Courses" folder that match the current semester
    let courses = dv.pages('"Uni/Courses"')
        .where(p => p.semester === currentSemester);

    // If no courses are found, show a message
    if (courses.length === 0) {
        dv.paragraph("No courses found for this semester.");
    } else {
        // Map course names to their file links for reference
        let courseNotes = {};
        courses.forEach(course => {
            courseNotes[course.file.name] = course.file.link;
        });

        // Get all assignments in the "Uni/Assignments" folder that match these courses
        let assignments = dv.pages('"Uni/Assignments"')
            .where(p => courses.some(course => course.course === p.course)) // Match by course property
            .sort(p => p.file.mtime, 'desc'); // Sort by last modified date

        // If no assignments are found, show a message
        if (assignments.length === 0) {
            dv.paragraph("No assignments found for this semester.");
        } else {
            // Display results in a table
            dv.table(["Assignment", "Due Date", "Course", "Completed", "Progress"], 
                assignments.map(p => [
                    p.file.link, // Display file link
                    p.due_date ?? "No Due Date", // Display due date if available
                    courseNotes[p.course] ?? "❌ Course Not Found", // Link to the course note
                    (p.completed === true || p.completed === "true") ? "✅ Completed" : "❌ Not Completed", // Display completion status
                    p.progress ?? "No Progress Info" // Display progress or fallback text
                ])
            );
        }
    }
}
```

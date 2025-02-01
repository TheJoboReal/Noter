---
tags:
  - uni
Semester Start: 01-08-2024
Semester End: 31-01-2025
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

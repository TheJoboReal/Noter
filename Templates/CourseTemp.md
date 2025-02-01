---
tags:
  - uni
  - course
semester: <%*
    // Get all course files inside "Uni/Courses"
    let courseFiles = app.vault.getMarkdownFiles()
        .filter(file => file.path.startsWith("Uni/Semesters/"));

    // Extract course names from file titles
    let courseNames = courseFiles.map(file => file.basename);

    // Prompt user to select a course
    let selectedCourse = await tp.system.suggester(courseNames, courseNames);
    tR += selectedCourse; // Return selected course
%>
course: <% tp.file.title %>
Exam form: <% await tp.system.suggester(["Oral", "Portfolio", "Written", "Attendance"], ["Oral", "Portfolio", "Written", "Attendance"]) %>
Exam Date: <%* tR += await tp.system.prompt("Enter the Exam Date (DD-MM-YYYY):"); %>
dato: <%tp.date.now('DD-MM-YYYY')%>
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
let currentCourse = dv.current().course; // Get the course property of the current note

if (!currentCourse) {
    dv.paragraph("⚠️ No 'course' property found in this file.");
} else {
    let folderPath = "Uni/Assignments"; // Base folder path

    // Find notes in Uni/Notes where course property matches current file
    let notes = dv.pages(`"${folderPath}"`)
        .where(p => p.course && p.course == currentCourse) // Match course property
        .sort(p => p.file.mtime, 'desc'); // Sort by last modified time

    dv.table(["File Name", "Last Modified"], 
        notes.map(p => [p.file.link, p.file.mtime])
    );
}
```


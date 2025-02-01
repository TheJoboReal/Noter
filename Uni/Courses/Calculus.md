---
tags:
  - course
  - uni
semester: semester 1
dato: 2025-02-01
---
Last Changed: `=dateformat(this.file.mtime, "yyyy-MM-dd - HH:mm")`

---
### Lecture Notes
```dataviewjs
let courseName = dv.current().file.name; // Get current note title
let folderPath = `Uni/Notes/${courseName}/Lecture Notes`; // Folder path (make sure it ends with '/')

dv.table(["File Name", "Last Modified"], 
    dv.pages(`"${folderPath}"`) // Properly wrap the folder path in quotes
      .sort(p => p.file.mtime, 'desc') // Sort by last modified time
      .map(p => [p.file.link, p.file.mtime])
);
```

---
## Assignments
```dataviewjs
let courseName = dv.current().file.name; // Get current note title
let lecturePath = `Uni/Notes/${courseName}/Lecture Notes`; // Folder for lectures
let exercisePath = `Uni/Notes/${courseName}/Exercises`; // Folder for exercises
let assignmentPath = `Uni/Notes/${courseName}/Assignments`; // Folder for assignments

// Get all lecture notes
let lectures = dv.pages(`"${lecturePath}"`)
    .sort(p => p.file.mtime, 'desc'); // Sort by last modified

// Function to find a matching file in a given folder
function getMatchingFile(lecture, searchPath) {
    let match = dv.pages(`"${searchPath}"`)
        .where(e => e.file.name == lecture.file.name) // Find file with same name
        .first(); // Get first match

    return match ? match.file.link : "❌ Not found"; // Return link or placeholder
}

// Generate table with extra columns for Exercises and Assignments
dv.table(["Lecture Name", "Last Modified", "Exercise", "Assignment"], 
    lectures.map(lecture => [
        lecture.file.link, // Lecture name
        lecture.file.mtime, // Last modified date
        getMatchingFile(lecture, exercisePath), // Find matching exercise
        getMatchingFile(lecture, assignmentPath) // Find matching assignment
    ])
);
```

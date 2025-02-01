---
tags:
  - course
  - uni
semester: semester 2
dato: 2025-02-01
---
Last Changed: `=dateformat(this.file.mtime, "yyyy-MM-dd - HH:mm")`

---
### Lecture Notes
```dataviewjs
let courseName = dv.current().file.name; // Get current note title
let lecturePath = `Uni/Notes/${courseName}/Lecture Notes`; // Folder for lectures
let exercisePath = `Uni/Notes/${courseName}/Exercises`; // Folder for exercises

// Get all lecture notes
let lectures = dv.pages(`"${lecturePath}"`)
    .sort(p => p.file.mtime, 'desc'); // Sort by last modified

// Function to find corresponding exercise file
function getExerciseFile(lecture) {
    let exercise = dv.pages(`"${exercisePath}"`)
        .where(e => e.file.name == lecture.file.name) // Find exercise with same name
        .first(); // Get first match

    return exercise ? exercise.file.link : "❌ No exercise"; // Return link or placeholder
}

// Generate table with extra column for exercises
dv.table(["Lecture Name", "Last Modified", "Exercise"], 
    lectures.map(lecture => [
        lecture.file.link, // Lecture name
        lecture.file.mtime, // Last modified date
        getExerciseFile(lecture) // Find matching exercise
    ])
);
```

---
## Assignments
```dataviewjs
let courseName = dv.current().file.name; // Get current note title
let folderPath = `Uni/Notes/${courseName}/Assignments`; // Folder path (make sure it ends with '/')

dv.table(["File Name", "Last Modified"], 
    dv.pages(`"${folderPath}"`) // Properly wrap the folder path in quotes
      .sort(p => p.file.mtime, 'desc') // Sort by last modified time
      .map(p => [p.file.link, p.file.mtime])
);
```

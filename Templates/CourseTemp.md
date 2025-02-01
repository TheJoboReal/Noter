---
tags:
  - course
  - uni
semester: <% await tp.system.suggester(["semester 1", "semester 2", "semester 3", "semester 4", "semester 5", "semester 6"], ["semester 1", "semester 2", "semester 3", "semester 4", "semester 5", "semester 6"]) %>
dato: <%tp.date.now('YYYY-MM-DD')%>
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
```dataviewjs
const courseName = dv.current().file.name; // Get current course name
const assignmentFolder = `Uni/Notes/${courseName}/Assignments/`; // Target folder
const templatePath = "Templates/AssignmentTemp"; // Path to your assignment template

// Button to create a new assignment
dv.paragraph(dv.el("button", "➕ Create Assignment", { 
    onclick: async () => {
        let assignmentName = await tp.system.prompt("Enter Assignment Name:");
        if (!assignmentName) return; // Exit if no name is provided

        let newFilePath = `${assignmentFolder}${assignmentName}.md`; // File path
        await tp.file.create_new(templatePath, newFilePath); // Create file from template

        new Notice(`✅ Assignment '${assignmentName}' created!`);
    }
}));
```
## Assignments
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

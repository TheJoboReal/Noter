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
let folderPath = `Uni/Notes/${courseName}/Assignments`; // Folder path (make sure it ends with '/')

dv.table(["File Name", "Last Modified"], 
    dv.pages(`"${folderPath}"`) // Properly wrap the folder path in quotes
      .sort(p => p.file.mtime, 'desc') // Sort by last modified time
      .map(p => [p.file.link, p.file.mtime])
);
```

---
tags:
  - course
  - uni
semester: <% await tp.system.suggester(["semester 1", "semester 2", "semester 3", "semester 4", "semester 5", "semester 6"], ["semester 1", "semester 2", "semester 3", "semester 4", "semester 5", "semester 6"]) %>
dato: <%tp.date.now('DD-MM-YYYY')%>
---
<%*
    let courseFolder = "Uni/Notes/" + tp.file.title;
    let lectureFolder = courseFolder + "/Lecture Notes";
    let exerciseFolder = courseFolder + "/Exercises";
    let assignmentFolder = courseFolder + "/Assignments";

    // Ensure folders exist before moving the file
    await tp.file.create_folder(courseFolder);
    await tp.file.create_folder(lectureFolder);
    await tp.file.create_folder(exerciseFolder);
    await tp.file.create_folder(assignmentFolder);
%>



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

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

```meta-bind-button
label: Create Assignment
icon: ""
style: default
class: ""
cssStyle: ""
backgroundImage: ""
tooltip: ""
id: ""
hidden: false
actions:
  - type: templaterCreateNote
    templateFile: Templates/AssignmentTemp.md
    folderPath: /
    fileName: ""
    openNote: true
    openIfAlreadyExists: true

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


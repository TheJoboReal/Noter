---
tags:
  - course
  - uni

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

<%* const courseName = tp.file.title; // Get the course name from the title 
// Define the base folder path 

const baseFolder = `Uni/Courses/${courseName}`; // Create folders inside `Uni/Courses/` (Lectures and Exercises folders) 
await tp.file.create_folder(baseFolder); // Create main course folder 
await tp.file.create_folder(`${baseFolder}/Lecture Notes`); // Create Lectures subfolder 
await tp.file.create_folder(`${baseFolder}/Assignments`); // Create Exercises subfolder 
await tp.file.create_folder(`${baseFolder}/Exercises`); // Create Exercises subfolder 
%>

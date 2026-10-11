---
tags:
  - project
project: <% tp.file.title %>
due_date: <% await tp.system.prompt("Enter Due Date (DD-MM-YYYY):") %>
date: <% tp.date.now('YYYY-MM-DD') %>
progress: <% await tp.system.suggester(["We are cooked", "Not Startet", "25%", "50%", "75%", "95%",],["We are cooked", "Not Startet", "25%", "50%", "75%", "95%",]) %>
completed: false
---
--- 



```dataviewjs
let currentproject = dv.current().project; // get the project property of the current note

if (!currentproject) {
    dv.paragraph("no 'project' property found in this file.");
} else {
    let folderpath = "Projects/Project Notes"; // base folder path

    // find notes where project property matches the current file (case-insensitive)
    let notes = dv.pages(`"${folderpath}"`)
        .where(p => p.project && p.project.toLowerCase() == currentproject.toLowerCase())
        .sort(p => p.file.mtime, 'desc'); // sort by last modified time

    if (notes.length === 0) {
        dv.paragraph(" no notes found for this project.");
    } else {
        dv.table(["file name", "last modified"], 
            notes.map(p => [
                p.file.link, // file link
                p.file.mtime // last modified time
            ])
        );
    }
}
```
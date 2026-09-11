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
let currentproject = dv.current().project; // get the course property of the current note

if (!currentproject) {
    dv.paragraph("no 'project' property found in this file.");
} else {
    let folderpath = "Projects/Project Notes"; // base folder path

    // find slides in uni/slides where course property matches the current file
    let slides = dv.pages(`"${folderpath}"`)
        .where(p => p.project && p.prroject == currentproject) // match course property
        .sort(p => p.file.mtime, 'desc'); // sort by last modified time

    if (slides.length === 0) {
        dv.paragraph(" no notes found for this project.");
    } else {
        dv.table(["file name", "last modified"], 
            slides.map(p => [
                p.file.link, // file link
                p.file.mtime // last modified time
            ])
        );
    }
}
```
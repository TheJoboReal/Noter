---
tags:
  - project
project: OpenTrack IMU
due_date:
date: 2026-09-11
progress: Not Startet
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
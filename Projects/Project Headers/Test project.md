---
tags:
  - project
project: Test project
due_date: null
date: 2026-09-11
progress: We are cooked
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
---
title: {{tp_file.title}}
type: Course
date: {{tp_date}}
---

# {{tp_file.title}}

## Course Overview
- Add your details here.

## Lectures
- List lectures here.

## Exercises
- List exercises here.

<%*
tp.system.prompt("Enter folder name for this course:", tp.file.title).then(folderName => {
    const notesFolder = `Notes/${folderName}`;
    return tp.file.create_folder(notesFolder).then(() => {
        const courseFilePath = `Courses/${tp.file.title}.md`;
        return tp.file.move(courseFilePath);
    });
});
%>

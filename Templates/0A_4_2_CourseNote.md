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
const defaultFolder = tp.file.title; // Default to course title
const folderName = await tp.system.prompt("Enter folder name for this course:", defaultFolder);

const notesFolder = `Notes/${folderName}`;
await tp.file.create_folder(notesFolder);

// Move the course note to "Courses/"
const courseFilePath = `Courses/${tp.file.title}.md`;
await tp.file.move(courseFilePath);
%>

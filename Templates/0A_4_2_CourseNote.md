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
const folder = "Courses";  // Set target folder
const newFilePath = folder + "/" + tp.file.title + ".md";
tp.file.move(newFilePath);
%>

---
title: "{{title}}"  # Course Title
type: "Course"
folder: "Courses"
---

# {{title}}

## 📖 Lectures

```dataviewjs
const courseTitle = dv.current().file.name;

// Query all lectures linked to this course
const lectures = dv.pages('"Lectures"')
    .where(l => l.course && l.course.includes(courseTitle))
    .sort(l => l.date, 'asc');

if (lectures.length) {
    dv.table(["Lecture", "Date"], lectures.map(l => [dv.fileLink(l.file.name), l.date]));
} else {
    dv.paragraph("No lectures yet.");
}

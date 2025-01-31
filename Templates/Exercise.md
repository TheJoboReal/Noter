```dataviewjs
// Query all exercises linked to this course
const exercises = dv.pages('"Exercises"')
    .where(e => e.course && e.course.includes(courseTitle))
    .sort(e => e.date, 'asc');

if (exercises.length) {
    dv.table(["Exercise", "Date"], exercises.map(e => [dv.fileLink(e.file.name), e.date]));
} else {
    dv.paragraph("No exercises yet.");
}
```

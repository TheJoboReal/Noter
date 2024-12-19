

### Daily Tasks
```dataviewjs
// Get the current date in YYYY-MM-DD format
let currentDate = moment().format("YYYY-MM-DD");

// Filter tasks from all pages where the task text contains the current date
dv.taskList(dv.pages().file.tasks
  .where(t => t.text.includes(currentDate)));
```
---

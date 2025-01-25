Total file Count: `$=dv.pages().length`
## Task
```dataview
	TASK
	FROM "Calendar" or "Todo"
	WHERE !completed
	SORT text asc
```
---
## Tasks Today
```dataviewjs
// Get the current date in DD-MM-YYYY format
let currentDate = moment().format("DD-MM-YYYY");

// Filter tasks from all pages where the task text contains the current date
dv.taskList(dv.pages().file.tasks
  .where(t => t.text.includes(currentDate)));
```
---
## Missed Tasks
```dataviewjs
// Get the current date in DD-MM-YYYY format for comparison
let currentDate = moment().startOf("day");

// Filter tasks from all pages where the task due date is in the past and the task is not completed
dv.taskList(
  dv.pages().file.tasks
    .where(t => {
      // Ensure the task is not completed
      if (t.completed) return false;

      // Extract date from the task text (assuming a date in DD-MM-YYYY format exists)
      let taskDateMatch = t.text.match(/\d{2}-\d{2}-\d{4}/);
      if (!taskDateMatch) return false;

      // Parse the extracted date and compare with the current date
      let taskDate = moment(taskDateMatch[0], "DD-MM-YYYY");
      return taskDate.isValid() && taskDate.isBefore(currentDate);
    })
);
```


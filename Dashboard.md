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

## Semesters
```dataviewjs
let folderPath = `Uni/Semesters`; // Folder path 

dv.table(["File Name", "Last Modified"], 
    dv.pages(`"${folderPath}"`) // Properly wrap the folder path in quotes
      .sort(p => p.file.name, 'asc') // Sort by last modified time
      .map(p => [p.file.link, p.file.mtime])
);
```

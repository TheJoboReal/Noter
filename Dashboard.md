
## Vault Info
 - **Vault Data**
	- Total file Count: `$=dv.pages().length`
	
---
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
// Get the current date in YYYY-MM-DD format
let currentDate = moment().format("DD-MM-YYYY");

// Filter tasks from all pages where the task text contains the current date
dv.taskList(dv.pages().file.tasks
  .where(t => t.text.includes(currentDate)));
```

---

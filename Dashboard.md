Total file Count: `$=dv.pages().length`
## Task
```dataview
	TASK
	FROM "Calendar" or "Todo"
	WHERE !completed
	SORT text asc
```
---
## Semesters
```dataviewjs
let folderPath = `Uni/Semesters`; // Folder path 

dv.table(["File Name", "Last Modified"], 
    dv.pages(`"${folderPath}"`) // Properly wrap the folder path in quotes
      .sort(p => p.file.name, 'asc') // Sort by last modified time
      .map(p => [p.file.link, p.file.mtime])
);
```
---
## Unfinished Assignments
```dataviewjs
let folderPath = "Uni/Assignments"; // Define the folder to search

// Find all assignments in the folder that are incomplete (completed === false or missing)
let incompleteAssignments = dv.pages(`"${folderPath}"`)
    .where(p => p.completed !== true && p.completed !== "true") // Filter by incomplete status
    .sort(p => p.file.mtime, 'desc'); // Sort by last modified date

// Display results in a table
dv.table(["Assignment", "Due Date", "Last Modified", "Completed"], 
    incompleteAssignments.map(p => [
        p.file.link, 
        p.due_date ?? "No Due Date", 
        p.file.mtime, 
        (p.completed === true || p.completed === "true") ? "✅ Completed" : "❌ Not Completed"
    ])
);
```

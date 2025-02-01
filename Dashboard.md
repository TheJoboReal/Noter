Total file Count: `$=dv.pages().length`
## Task
```dataview
	TASK
	FROM "Calendar" or "Todo"
	WHERE !completed
	SORT text asc
```
---
## Unfinished Assignments
```dataviewjs
let folderPath = "Uni/Assignments"; // Define the folder to search

// Find all assignments that are NOT completed
let assignments = dv.pages(`"${folderPath}"`)
    .where(p => !p.completed || p.completed === false) // Find missing or false "completed"
    .sort(p => p.file.mtime, 'desc'); // Sort by last modified date

// Display results in a table
dv.table(["Assignment", "Due Date", "Last Modified", "Mark as Completed"], 
    assignments.map(p => [
        p.file.link, 
        p.due_date ?? "No Due Date", 
        p.file.mtime, 
        dv.el("input", "", { 
            type: "checkbox", checked: p.completed, 
            onclick: async () => {
                await app.vault.modify(p.file, p.file.content.replace(
                    `completed: ${p.completed}`, `completed: true`
                ));
                new Notice(`✅ Marked '${p.file.name}' as Completed!`);
            }
        })
    ])
);
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

## Vault Info
 - **Vault Data**
	- Total file Count: `$=dv.pages().length`
	
---
## Task
```dataview
	TASK
	FROM "Calendar" or "Todo"
	WHERE !completed
```


```dataviewjs
// Get the current date in YYYY-MM-DD format
let targetDate = moment().format("YYYY-MM-DD"); // Ensure moment.js is available

// Fetch pages with file paths starting with the desired calendar path
let pages = dv.pages()
  .where(p => p.file.path.startsWith(`calendar-path/${targetDate}`)) // Replace "calendar-path" with your actual path
  .sort(p => p.startTime); // Ensure your files have startTime metadata

// Map events to a readable format
let events = pages.map(p => `- ${p.startTime || '??'}-${p.endTime || '??'} — ${p.title || p.file.name}`).join("\n");

// Output the events as a paragraph
dv.paragraph(events);
```
## Vault Info
 - **Vault Data**
	- Total file Count: `$=dv.pages().length`
	
---
## Task
```dataview
	TASK
	FROM "Calendar"
	WHERE !completed
	SORT text asc
```
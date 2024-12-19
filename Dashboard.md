## Vault Info
 - **Vault Data**
	- Total file Count: `$=dv.pages().length`
	
---
## Task

```dataviewjs
dv.pages().file
	.where(t => t.completed == true)
```
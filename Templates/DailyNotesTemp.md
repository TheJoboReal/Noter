---
date: <% tp.date.now("DD-MM-YYYY") %>
---

#### Backlog
```dataview
	TASK
	FROM "Daily Notes"
	WHERE !completed
	SORT text asc
```


#### Tasks Today

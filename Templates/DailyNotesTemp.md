---
date: <% tp.date.now("DD-MM-YYYY") %>
---

#### Backlog
```dataview
TASK
FROM "Daily Notes"
WHERE !completed
AND file.path != this.file.path
SORT text asc
```


#### Tasks Today

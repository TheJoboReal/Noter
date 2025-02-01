---
tags:
  - uni
semester: <% tp.file.title %>
---
Last Changed: `=dateformat(this.file.mtime, "yyyy-MM-dd - HH:mm")`

---
### Lecture Notes
```dataviewjs
table semester, file.mtime
from "Uni/Courses"
where semester = this.file.semester
sort file.mtime desc
```

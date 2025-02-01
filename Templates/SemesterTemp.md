---
tags:
  - uni
semester: <% await tp.system.suggester(["semester 1", "semester 2", "semester 3", "semester 4", "semester 5", "semester 6"], ["semester 1", "semester 2", "semester 3", "semester 4", "semester 5", "semester 6"]) %>
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

---
tags:
  - course
  - uni
course: <% tp.file.folder(true).split("/").slice(-2, -1)[0] %>
due date: <% await tp.system.prompt("Enter Due Date (YYYY-MM-DD):") %>
---
Last Changed: `=dateformat(this.file.mtime, "yyyy-MM-dd - HH:mm")`

---
* Exercise description [[]]

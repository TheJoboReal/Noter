---
tags:
  - lecture-note
  - uni
course: <%*
    // Get all course files inside "Uni/Courses"
    let courseFiles = app.vault.getMarkdownFiles()
        .filter(file => file.path.startsWith("Uni/Courses/"));

    // Extract course names from file titles
    let courseNames = courseFiles.map(file => file.basename);

    // Prompt user to select a course
    let selectedCourse = await tp.system.suggester(courseNames, courseNames);
    tR += selectedCourse; // Return selected course
%>
lecture: <% await tp.system.prompt("Enter lecture") %> 
date: <% tp.date.now('YYYY-MM-DD') %>
---

**Table of Content**
```dataviewjs
let file = dv.current().file.path; // Get current note path
let content = await app.vault.read(app.vault.getAbstractFileByPath(file)); // Read file content

// Regular expression to find headers (e.g., # Header, ## Subheader)
let headers = content.match(/^#+\s.+/gm);

if (!headers || headers.length === 0) {
    dv.paragraph("⚠️ No headers found in this note.");
} else {
    // Convert headers into a table of contents
    dv.list(headers.map(header => {
        let level = header.match(/^#+/)[0].length; // Count '#' to determine header level
        let title = header.replace(/^#+\s*/, ""); // Remove '#' symbols
        let anchor = title.toLowerCase().replace(/\s+/g, "-"); // Create Obsidian-style link anchor

        return `[[${file}#${title}|${"‣ ".repeat(level - 1)}${title}]]`; // Indentation based on header level
    }));
}
```
--- 
#### Definition

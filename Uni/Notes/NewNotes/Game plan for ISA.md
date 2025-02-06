---
tags:
  - lecture-note
  - uni
course: Individuel Studieaktivitet
lecture: null 
date: 2025-02-03
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
#### Plan
1. Første skridt er at lave nogle simple API's i C til robotten. Fx get sensor data eller ligende.
2. Næste skridt er at bruge [[Shared Memory|shared memory]] til at modtage sensor fra API'en og printe den til terminalen i python.
3. Vi kan nu lave nogle mere avanceret API funktioner som, kør frem *n* meter eller returnere hastighed.
4. Lav GUI i python til display sensor data og lav knapper til at sende commands til robotten.

- [ ] Kig på interrupts så det ikke bliver en process der låser en thread.
- [ ] Kig evt på python Viper bibliotek som kan lave python kode til C kode.
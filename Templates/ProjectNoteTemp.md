---
tags:
  - projectNote
  - project
project: <%*
    // Get all course files inside "Projects/Project Notes"
    let projectFiles = app.vault.getMarkdownFiles()
        .filter(file => file.path.startsWith("Projects/Project Headers"));

    // Extract project names from file titles
    let projectNames = projectFiles.map(file => file.basename);

    // Prompt user to select a course
    let selectedCourse = await tp.system.suggester(projectNames, projectNames);
    tR += selectedProject; // Return selected project
%>
date: <% tp.date.now('YYYY-MM-DD') %>
---
--- 
#### Definition


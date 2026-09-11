---
tags:
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
due_date: <% await tp.system.prompt("Enter Due Date (DD-MM-YYYY):") %>
date: <% tp.date.now('YYYY-MM-DD') %>
progress: <% await tp.system.suggester(["We are cooked", "Not Startet", "25%", "50%", "75%", "95%",],["We are cooked", "Not Startet", "25%", "50%", "75%", "95%",]) %>
completed: false
---
--- 
#### Assignment Description


#### Assignment Answer

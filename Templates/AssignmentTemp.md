---
tags:
  - assignment
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
due_date: <% await tp.system.prompt("Enter Due Date (DD-MM-YYYY):") %>
date: <% tp.date.now('YYYY-MM-DD') %>
progress: <% await tp.system.suggester(["We are cooked", "Not Startet", "25%", "50%", "75%", "95%",],["We are cooked", "Not Startet", "25%", "50%", "75%", "95%",]) %>
completed: false
---
--- 
#### Assignment Description


#### Assignment Answer
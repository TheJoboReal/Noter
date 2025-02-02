---
tags:
  - assignment
  - uni
semester: <%*
    // Get all course files inside "Uni/Courses"
    let courseFiles = app.vault.getMarkdownFiles()
        .filter(file => file.path.startsWith("Uni/Semesters/"));

    // Extract course names from file titles
    let courseNames = courseFiles.map(file => file.basename);

    // Prompt user to select a course
    let selectedCourse = await tp.system.suggester(courseNames, courseNames);
    tR += selectedCourse; // Return selected course
%>
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
due date: <% await tp.system.prompt("Enter Due Date (DD-MM-YYYY):") %>
date: <% tp.date.now('YYYY-MM-DD') %>
completed: false
---
--- 
#### Assignment Description


#### Assignment Answer
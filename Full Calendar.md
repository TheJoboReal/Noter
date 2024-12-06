
```dataviewjs
// Set a minimum height for the calendar
this.container.style.minHeight = "1000px";

// Import the Full Calendar rendering function from the plugin
const { renderCalendar } = app.plugins.plugins["obsidian-full-calendar"];

// Render the calendar, relying on the plugin to automatically pull in the configured calendar sources
let calendar = renderCalendar(this.container, [], {
    initialView: "timeGridWeek", // Set the initial view to weekly
    headerToolbar: {
        start: "prev,next today", // Show navigation buttons
        center: "title", // Center the title
        end: "timeGridWeek,dayGridMonth" // Allow toggling between week and month views
    }
});

// Render the calendar
calendar.render();
```

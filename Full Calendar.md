
```dataviewjs
// Set the minimum height for the calendar container
this.container.style.minHeight = "100rem";

// Import the Full Calendar rendering function
const { renderCalendar } = app.plugins.plugins["obsidian-full-calendar"];

// Render the calendar
let calendar = renderCalendar(this.container, [], {
    initialView: "timeGridWeek", // Show the weekly view
    headerToolbar: {
        start: "prev,next today", // Navigation buttons
        center: "title", // Centered title
        end: "timeGridWeek,dayGridMonth" // View options
    },
    events: (info, successCallback, failureCallback) => {
        // Fetch events dynamically from Full Calendar plugin's configured sources
        const eventSources = app.plugins.plugins["obsidian-full-calendar"].getEventsInRange(
            info.startStr,
            info.endStr
        );

        if (eventSources) {
            successCallback(eventSources);
        } else {
            failureCallback("No events found.");
        }
    }
});

// Render the calendar
calendar.render();
```

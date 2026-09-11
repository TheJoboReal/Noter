Total file Count: `$=dv.pages().length`
	![[kanban-default.base]]

> [!Linux]
> [[Linux Querks]]

> [!column] 
>> [!note] Semesters
>>```dataviewjs
>>let folderPath = `Uni/Semesters`; // Folder path 
>>
>>dv.table(["File Name", "Last Modified"], 
    >>dv.pages(`"${folderPath}"`) // Properly wrap the folder path in quotes
      >>.sort(p => p.file.name, 'asc') // Sort by last modified time
      >>.map(p => [p.file.link, p.file.mtime])
>>);
>>```
>
>> [!info] Projects
>> 
>>```dataviewjs
>>let folderPath = "Projects/Project Headers"; // Define the folder to search
>>
>>// Find all assignments in the folder
>>let incompleteAssignments = dv.pages(`"${folderPath}"`)
    >>.sort(p => p.file.mtime, 'desc'); // Sort by last modified date
>>
>>// Display results in a table
>>dv.table(["Assignment", "Progress"], 
    >>incompleteAssignments.map(p => [
        >>p.file.link, // Assignment file link
        >>p.progress ?? "No Progress Info" // Display progress or fallback text
    >>])
>>);
>>```

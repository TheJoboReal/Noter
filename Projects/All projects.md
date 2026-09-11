

### Projects

>>```dataviewjs
>>let folderPath = `Projects/Project Headers`; // Folder path 
>>
>>dv.table(["File Name", "Last Modified"], 
    >>dv.pages(`"${folderPath}"`) // Properly wrap the folder path in quotes
      >>.sort(p => p.file.name, '') // Sort by last modified time
      >>.map(p => [p.file.link, p.file.mtime])
>>);
>>```

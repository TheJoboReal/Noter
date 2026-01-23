#!/usr/bin/env python3

import sys
import time
from os import listdir
from os.path import isfile, join
import re

daily_notes_dir = sys.argv[1]

unchecked = r"^\s*-\s*\[\s*\]"  # flexible regex for unchecked todos
prevnote = []
open_todos = []
carryover_tally = "."  # append each time todo is migrated

# get files
files = [f for f in listdir(daily_notes_dir) if isfile(join(daily_notes_dir, f))]

if len(files) >= 2:
    files.sort(reverse=True)
    prevfile = files[1]  # second newest file

    # wait a bit to avoid race conditions
    time.sleep(2)

    # read previous note and separate todos
    prev_path = join(daily_notes_dir, prevfile)
    with open(prev_path, "r+") as f:
        lines = f.readlines()
        for line in lines:
            if re.search(unchecked, line):
                open_todos.append(line)
            else:
                prevnote.append(line)
        # rewrite previous note without moved todos
        f.seek(0)
        f.writelines(prevnote)
        f.truncate()

    # output todos for Templater
    if open_todos:
        for todo in open_todos:
            print(todo.rstrip() + carryover_tally)
    else:
        print("- [ ]")
else:
    print("- [ ]")

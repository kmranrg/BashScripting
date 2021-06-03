#! /bin/bash

# Install inotify: sudo apt install inotify-tools

mkdir -p temp/MyNewFolder
inotifywait -m temp/MyNewFolder 

: '
From the Above Line:

Now inotify will wait and watch these directories and
give us the output on terminal about whatever the operations
we are doing inside these directoires. So, after running
this script, try opening-closing "temp" and "MyNewFolder".
You can also try to create new files in these directories.
'

: "
OUTPUT:

Setting up watches.
Watches established.
temp/MyNewFolder/ OPEN,ISDIR 
temp/MyNewFolder/ ACCESS,ISDIR 
temp/MyNewFolder/ CLOSE_NOWRITE,CLOSE,ISDIR 
temp/MyNewFolder/ OPEN,ISDIR 
temp/MyNewFolder/ ACCESS,ISDIR 
temp/MyNewFolder/ CLOSE_NOWRITE,CLOSE,ISDIR 
temp/MyNewFolder/ CREATE myNewFile.txt
temp/MyNewFolder/ OPEN myNewFile.txt
temp/MyNewFolder/ ATTRIB myNewFile.txt
temp/MyNewFolder/ CLOSE_WRITE,CLOSE myNewFile.txt
temp/MyNewFolder/ OPEN,ISDIR 
temp/MyNewFolder/ ACCESS,ISDIR 
temp/MyNewFolder/ CLOSE_NOWRITE,CLOSE,ISDIR 
temp/MyNewFolder/ OPEN,ISDIR 
temp/MyNewFolder/ ACCESS,ISDIR 
temp/MyNewFolder/ ACCESS,ISDIR 
temp/MyNewFolder/ CLOSE_NOWRITE,CLOSE,ISDIR 
temp/MyNewFolder/ OPEN,ISDIR 
temp/MyNewFolder/ ACCESS,ISDIR 
temp/MyNewFolder/ ACCESS,ISDIR 
temp/MyNewFolder/ CLOSE_NOWRITE,CLOSE,ISDIR 
^C
"
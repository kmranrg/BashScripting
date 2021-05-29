#! /bin/bash

printf "\nOpening a file explorer with Administrator Access\n"

sudo nautilus

: "
OUTPUT:

Opening a file explorer with Administrator Access
[sudo] password for kmranrg: 

** (org.gnome.Nautilus:35274): WARNING **: 00:01:44.474: Unable to get contents of the bookmarks file: Error opening file /root/.gtk-bookmarks: No such file or directory

** (org.gnome.Nautilus:35274): WARNING **: 00:01:44.474: Unable to get contents of the bookmarks file: Error opening file /root/.gtk-bookmarks: No such file or directory
Nautilus-Share-Message: 00:01:44.696: Called "net usershare info" but it failed: Failed to execute child process “net” (No such file or directory)
^C
"
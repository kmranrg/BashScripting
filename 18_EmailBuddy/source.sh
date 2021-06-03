#! /bin/bash

: "
STEP-1: Dependency to install
1) sudo apt update
2) sudo apt install ssmtp
3) sudo apt install mailutils
4) sudo apt install mpack

STEP-2: Turn on Less secure app access from your Google Account
1) First go to Manage your Google Account Page
2) Then click on Security tab from left panel
3) Scroll down to see 'Less Secure App Access'
4) Turn it on

STEP-3: Editing the ssmtp.conf file
1) Open terminal and type: sudo nautilus
2) Then go to this path /etc/ssmpt and open 'ssmtp.conf' file
3) Add these following lines:
root=yourEmailID@gmail.com
mailhub=smtp.gmail.com:587
AuthUser=yourEmailID@gmail.com
AuthPass=justTypeYourPassword
UseSTARTTLS=yes
"

echo "Hey there, what's up!" | mail -s "Mail using Bash Script" kmranrg@gmail.com


: "
In the above line:

1) 'Hey there, what's up!' is the mail body
2) 'Mail using Bash Script' is the subject
3) 'kmranrg@gmail.com' is the recepient email's address
"

# for sending attachment
mpack -s "Sending Mail Attachment using Bash Script" anurag.zip kmranrg@gmail.com

: "
In the above line:

1) 'Sending Mail Attachment using Bash Script' is the subject
2) 'anurag.zip' is attachment file name
3) 'kmranrg@gmail.com' is the recepient email's address
"

# Excecute this file using this command: bash source.sh
# Open your mailbox to check the mail
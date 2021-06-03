#! /bin/bash

printf "\n1) Print all predefined variables\n"

declare -p

printf "\n2) Make a new vairable, store some value and declare it and then print all declared varaibles\n"

declare myVariable=22
declare -p

printf "\n3) Declare a read only variable\n"

# NOTE: we can not change the value of a read-only variable
declare -r myValue=10
echo $myValue
# now let's try to change the value of a read-only variable
myValue=100 # it will give a warning that it's a readonly variable
echo $myValue # it will not print 100, it will print 10 only

# Moral of the Story: Whenever we need to make a variable whose value we don't to change throughout, we can use `declare` command

: '
OUTPUT:

1) Print all predefined variables
declare -x APPLICATION_INSIGHTS_NO_DIAGNOSTIC_CHANNEL="true"
declare -- BASH="/usr/bin/bash"
declare -r BASHOPTS="checkwinsize:cmdhist:complete_fullquote:extquote:force_fignore:globasciiranges:hostcomplete:interactive_comments:progcomp:promptvars:sourcepath"
declare -i BASHPID
declare -A BASH_ALIASES=()
declare -a BASH_ARGC=()
declare -a BASH_ARGV=()
declare -- BASH_ARGV0
declare -A BASH_CMDS=()
declare -- BASH_COMMAND
declare -a BASH_LINENO=([0]="0")
declare -a BASH_SOURCE=([0]="source.sh")
declare -- BASH_SUBSHELL
declare -ar BASH_VERSINFO=([0]="5" [1]="1" [2]="4" [3]="1" [4]="release" [5]="x86_64-pc-linux-gnu")
declare -- BASH_VERSION="5.1.4(1)-release"
declare -x BREAKPAD_DUMP_LOCATION="/home/kmranrg/.config/Code/exthost Crash Reports"
declare -x CHROME_DESKTOP="code-url-handler.desktop"
declare -x COLORTERM="truecolor"
declare -- COMP_WORDBREAKS
declare -x DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"
declare -x DESKTOP_SESSION="ubuntu"
declare -a DIRSTACK=()
declare -x DISPLAY=":1"
declare -- EPOCHREALTIME
declare -- EPOCHSECONDS
declare -ir EUID="1000"
declare -a FUNCNAME
declare -x GDK_BACKEND="x11"
declare -x GDMSESSION="ubuntu"
declare -x GIT_ASKPASS="/usr/share/code/resources/app/extensions/git/dist/askpass.sh"
declare -x GNOME_DESKTOP_SESSION_ID="this-is-deprecated"
declare -x GNOME_SHELL_SESSION_MODE="ubuntu"
declare -x GNOME_TERMINAL_SCREEN="/org/gnome/Terminal/screen/e74ad717_a2b3_49de_aad0_577d6b99172b"
declare -x GNOME_TERMINAL_SERVICE=":1.8430"
declare -x GPG_AGENT_INFO="/run/user/1000/gnupg/S.gpg-agent:0:1"
declare -a GROUPS=()
declare -x GTK_MODULES="gail:atk-bridge"
declare -x G_ENABLE_DIAGNOSTIC="0"
declare -i HISTCMD
declare -x HOME="/home/kmranrg"
declare -- HOSTNAME="kmranrg-ubuntu"
declare -- HOSTTYPE="x86_64"
declare -- IFS=" 
"
declare -x IM_CONFIG_PHASE="1"
declare -x INVOCATION_ID="d4465d1eb0fb4be6a9da524fcfed6d06"
declare -x JOURNAL_STREAM="8:1451764"
declare -x LANG="en_GB.UTF-8"
declare -x LANGUAGE="en_IN:en"
declare -x LESSCLOSE="/usr/bin/lesspipe %s %s"
declare -x LESSOPEN="| /usr/bin/lesspipe %s"
declare -- LINENO
declare -x LOGNAME="kmranrg"
declare -x LS_COLORS="rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.webp=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:"
declare -- MACHTYPE="x86_64-pc-linux-gnu"
declare -x MANAGERPID="1408"
declare -x OLDPWD="/home/kmranrg/Documents/kan_work/BashScripting"
declare -- OPTERR="1"
declare -i OPTIND="1"
declare -x ORIGINAL_XDG_CURRENT_DESKTOP="ubuntu:GNOME"
declare -- OSTYPE="linux-gnu"
declare -x PATH="/home/kmranrg/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/snap/bin:/home/kmranrg/.dotnet/tools"
declare -a PIPESTATUS=([0]="0")
declare -ir PPID="161817"
declare -- PS4="+ "
declare -x PWD="/home/kmranrg/Documents/kan_work/BashScripting/14_DeclareCommand"
declare -x QT_ACCESSIBILITY="1"
declare -x QT_IM_MODULE="ibus"
declare -i RANDOM
declare -- SECONDS
declare -x SESSION_MANAGER="local/kmranrg-ubuntu:@/tmp/.ICE-unix/1672,unix/kmranrg-ubuntu:/tmp/.ICE-unix/1672"
declare -x SHELL="/bin/bash"
declare -r SHELLOPTS="braceexpand:hashall:interactive-comments"
declare -x SHLVL="3"
declare -i SRANDOM
declare -x SSH_AGENT_LAUNCHER="gnome-keyring"
declare -x SSH_AUTH_SOCK="/run/user/1000/keyring/ssh"
declare -x TERM="xterm-256color"
declare -x TERM_PROGRAM="vscode"
declare -x TERM_PROGRAM_VERSION="1.56.2"
declare -ir UID="1000"
declare -x USER="kmranrg"
declare -x USERNAME="kmranrg"
declare -x VSCODE_GIT_ASKPASS_MAIN="/usr/share/code/resources/app/extensions/git/dist/askpass-main.js"
declare -x VSCODE_GIT_ASKPASS_NODE="/usr/share/code/code"
declare -x VSCODE_GIT_IPC_HANDLE="/run/user/1000/vscode-git-9ffebd041b.sock"
declare -x VTE_VERSION="6203"
declare -x WINDOWPATH="2"
declare -x XAUTHORITY="/run/user/1000/gdm/Xauthority"
declare -x XDG_CONFIG_DIRS="/etc/xdg/xdg-ubuntu:/etc/xdg"
declare -x XDG_CURRENT_DESKTOP="Unity"
declare -x XDG_DATA_DIRS="/usr/share/ubuntu:/usr/local/share/:/usr/share/:/var/lib/snapd/desktop"
declare -x XDG_MENU_PREFIX="gnome-"
declare -x XDG_RUNTIME_DIR="/run/user/1000"
declare -x XDG_SESSION_CLASS="user"
declare -x XDG_SESSION_DESKTOP="ubuntu"
declare -x XDG_SESSION_TYPE="x11"
declare -x XMODIFIERS="@im=ibus"
declare -- _="\\n1) Print all predefined variables\\n"

2) Make a new vairable, store some value and declare it and then print all declared varaibles
declare -x APPLICATION_INSIGHTS_NO_DIAGNOSTIC_CHANNEL="true"
declare -- BASH="/usr/bin/bash"
declare -r BASHOPTS="checkwinsize:cmdhist:complete_fullquote:extquote:force_fignore:globasciiranges:hostcomplete:interactive_comments:progcomp:promptvars:sourcepath"
declare -i BASHPID
declare -A BASH_ALIASES=()
declare -a BASH_ARGC=()
declare -a BASH_ARGV=()
declare -- BASH_ARGV0
declare -A BASH_CMDS=()
declare -- BASH_COMMAND
declare -a BASH_LINENO=([0]="0")
declare -a BASH_SOURCE=([0]="source.sh")
declare -- BASH_SUBSHELL
declare -ar BASH_VERSINFO=([0]="5" [1]="1" [2]="4" [3]="1" [4]="release" [5]="x86_64-pc-linux-gnu")
declare -- BASH_VERSION="5.1.4(1)-release"
declare -x BREAKPAD_DUMP_LOCATION="/home/kmranrg/.config/Code/exthost Crash Reports"
declare -x CHROME_DESKTOP="code-url-handler.desktop"
declare -x COLORTERM="truecolor"
declare -- COMP_WORDBREAKS
declare -x DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"
declare -x DESKTOP_SESSION="ubuntu"
declare -a DIRSTACK=()
declare -x DISPLAY=":1"
declare -- EPOCHREALTIME
declare -- EPOCHSECONDS
declare -ir EUID="1000"
declare -a FUNCNAME
declare -x GDK_BACKEND="x11"
declare -x GDMSESSION="ubuntu"
declare -x GIT_ASKPASS="/usr/share/code/resources/app/extensions/git/dist/askpass.sh"
declare -x GNOME_DESKTOP_SESSION_ID="this-is-deprecated"
declare -x GNOME_SHELL_SESSION_MODE="ubuntu"
declare -x GNOME_TERMINAL_SCREEN="/org/gnome/Terminal/screen/e74ad717_a2b3_49de_aad0_577d6b99172b"
declare -x GNOME_TERMINAL_SERVICE=":1.8430"
declare -x GPG_AGENT_INFO="/run/user/1000/gnupg/S.gpg-agent:0:1"
declare -a GROUPS=()
declare -x GTK_MODULES="gail:atk-bridge"
declare -x G_ENABLE_DIAGNOSTIC="0"
declare -i HISTCMD
declare -x HOME="/home/kmranrg"
declare -- HOSTNAME="kmranrg-ubuntu"
declare -- HOSTTYPE="x86_64"
declare -- IFS=" 
"
declare -x IM_CONFIG_PHASE="1"
declare -x INVOCATION_ID="d4465d1eb0fb4be6a9da524fcfed6d06"
declare -x JOURNAL_STREAM="8:1451764"
declare -x LANG="en_GB.UTF-8"
declare -x LANGUAGE="en_IN:en"
declare -x LESSCLOSE="/usr/bin/lesspipe %s %s"
declare -x LESSOPEN="| /usr/bin/lesspipe %s"
declare -- LINENO
declare -x LOGNAME="kmranrg"
declare -x LS_COLORS="rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.webp=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:"
declare -- MACHTYPE="x86_64-pc-linux-gnu"
declare -x MANAGERPID="1408"
declare -x OLDPWD="/home/kmranrg/Documents/kan_work/BashScripting"
declare -- OPTERR="1"
declare -i OPTIND="1"
declare -x ORIGINAL_XDG_CURRENT_DESKTOP="ubuntu:GNOME"
declare -- OSTYPE="linux-gnu"
declare -x PATH="/home/kmranrg/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/snap/bin:/home/kmranrg/.dotnet/tools"
declare -a PIPESTATUS=([0]="0")
declare -ir PPID="161817"
declare -- PS4="+ "
declare -x PWD="/home/kmranrg/Documents/kan_work/BashScripting/14_DeclareCommand"
declare -x QT_ACCESSIBILITY="1"
declare -x QT_IM_MODULE="ibus"
declare -i RANDOM
declare -- SECONDS
declare -x SESSION_MANAGER="local/kmranrg-ubuntu:@/tmp/.ICE-unix/1672,unix/kmranrg-ubuntu:/tmp/.ICE-unix/1672"
declare -x SHELL="/bin/bash"
declare -r SHELLOPTS="braceexpand:hashall:interactive-comments"
declare -x SHLVL="3"
declare -i SRANDOM
declare -x SSH_AGENT_LAUNCHER="gnome-keyring"
declare -x SSH_AUTH_SOCK="/run/user/1000/keyring/ssh"
declare -x TERM="xterm-256color"
declare -x TERM_PROGRAM="vscode"
declare -x TERM_PROGRAM_VERSION="1.56.2"
declare -ir UID="1000"
declare -x USER="kmranrg"
declare -x USERNAME="kmranrg"
declare -x VSCODE_GIT_ASKPASS_MAIN="/usr/share/code/resources/app/extensions/git/dist/askpass-main.js"
declare -x VSCODE_GIT_ASKPASS_NODE="/usr/share/code/code"
declare -x VSCODE_GIT_IPC_HANDLE="/run/user/1000/vscode-git-9ffebd041b.sock"
declare -x VTE_VERSION="6203"
declare -x WINDOWPATH="2"
declare -x XAUTHORITY="/run/user/1000/gdm/Xauthority"
declare -x XDG_CONFIG_DIRS="/etc/xdg/xdg-ubuntu:/etc/xdg"
declare -x XDG_CURRENT_DESKTOP="Unity"
declare -x XDG_DATA_DIRS="/usr/share/ubuntu:/usr/local/share/:/usr/share/:/var/lib/snapd/desktop"
declare -x XDG_MENU_PREFIX="gnome-"
declare -x XDG_RUNTIME_DIR="/run/user/1000"
declare -x XDG_SESSION_CLASS="user"
declare -x XDG_SESSION_DESKTOP="ubuntu"
declare -x XDG_SESSION_TYPE="x11"
declare -x XMODIFIERS="@im=ibus"
declare -- _="myVariable=22"
declare -- myVariable="22"

3) Declare a read only variable
10
source.sh: line 18: myValue: readonly variable
10
'
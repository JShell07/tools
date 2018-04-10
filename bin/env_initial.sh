#!/bin/bash


#declare_alias()
alias ll='/bin/ls -l --color=auto'
alias lh='/bin/ls -lh --color=auto'
alias grep='/bin/grep -rn --color=auto'

#declare_path()
export LC_ALL="en_US.UTF-8"
export PATH=/home/wang.kai/JShell_tools/bin:$PATH

_R="\033[31m"
_G="\033[32m"
_Y="\033[33m"
_N="\033[0m"

#display_path()
printf $_Y
cat <<EOF
                               +
                             /++
  .-------------------------+++++----+
 /  []  JSHELL WORK PATH    |++++    +
'---------------------------+++++----+
EOF
printf $_N

if [ -f ~/.JShell_Work_Path ]; then
    source ~/.JShell_Work_Path
    printf $_R
    cat ~/.JShell_Work_Path
    printf $_N
fi

# enable zsh
zsh

alias l='ls -ltrG'
alias c='clear'
alias work='cd ~/Developer/vis/trunk/travel/feedProcessing/src/main/pig'

#export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK
export JAVA_HOME=/Library/Java/Home
export CATALINA_HOME=/Library/Tomcat/Home
export PS1="[\h:\W \u]"
export PATH
#export HISTFILESIZE=1000000000
#export HISTSIZE=1000000
#export HISTCONTROL=ignoredups 
#shopt -s histappend
#INPUTRC=~/.inputrc
#export PROMPT_COMMAND="history -a"
export BASH_COMPLETION=/sw/etc/bash_completion
if [ -f /sw/etc/bash_completion ]; then
   . /sw/etc/bash_completion
fi

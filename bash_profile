os=`uname`

#Oracle Stuff
#export ORACLE_HOME=/home/y/libexec/oracle/
#export TNS_ADMIN=/home/y/conf/oracle/
#export NLS_LANG=.UTF8 
#alias sqlplus='rlwrap sqlplus'

#Generic
#export PATH=$HOME/bin:$PATH:/home/y/libexec/ant/bin:

#Yahoo World
alias logs='cd /home/y/logs/'
alias etc='cd /home/y/etc/'
alias conf='cd /home/y/conf'
alias tomcat='cd /home/y/etc/tomcat'
alias valgrind='valgrind --tool=memcheck --leak-check=yes  --show-reachable=yes'


alias mc_tests='cd /home/sanjivr/trunk/yahoo/properties/membership/test/features'
alias igor='cd /home/sanjivr/membership/membership/Reg/yahoo/idaconfig/package/regLogin/rhelbuildicus/igor'


if [ $os == "Linux" ]
then
alias l='ls -ltr --color'
alias ls='ls --color'
alias la='ls -ltra --color'
export JAVA_HOME=/home/y/
elif [ $os == "FreeBSD" ]
then
alias l='ls -ltrG'
alias ls='ls -G'
alias la='ls -ltrGa'
export JAVA_HOME=/home/y/libexec32/jdk1.5.0
fi
alias c='clear'
if [ `which vim` ]
then
    alias vi='vim'
fi
#cscope
#alias cs='cd /; find $YHOME -name '*.h' > /tmp/cscope.files ; find $YHOME -name '*.cpp' >> /tmp/cscope.files; find $YHOME  -name '*.C' >> /tmp/cscope.files; cd $YHOME; cscope -R -i /tmp/cscope.files;'

#vi mode in shell
set -o vi
shopt -s histappend
PROMPT_COMMAND='history -a'

if [ $YROOT_NAME"x" == "x" ]
then
export PS1="[\u@<\h>:\W]"
else
export PS1="[\u@<\h:$YROOT_NAME>:\W]"
fi
#SVN 
export 	SVN_SSH=/usr/local/bin/yssh
export  SVNROOT=svn+ssh://svn.corp.yahoo.com/
export  SVN_EDITOR=vi

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

#GLOBAL


#Linux

	#Yahoo

#Mac


#FreeBSD

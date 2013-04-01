# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ $YROOT_NAME'x' = 'x' ]
then
echo -ne "\ek`hostname -s`\e\\"
else
echo -ne "\ek$YROOT_NAME\e\\"
fi

source ~/.bash_profile

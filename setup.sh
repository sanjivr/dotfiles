mkdir -p ~/.shell_startup
ln -sf `pwd`/shell/aliases 	~/.shell_startup/aliases
ln -sf `pwd`/shell/shell	~/.shell_startup/shell
ln -sf `pwd`/shell/environment 	~/.shell_startup/environment
ln -sf `pwd`/shell/eyecandy	~/.shell_startup/eyecandy
ln -sf `pwd`/shell/inputrc 	~/.inputrc

ln -sf `pwd`/shell/bash_profile ~/.bash_profile
ln -sf `pwd`/shell/bashrc 	~/.bashrc

ln -sf `pwd`/shell/environment  ~/.zshenv
ln -sf `pwd`/shell/zshrc	~/.zshrc

ln -sf `pwd`/screenrc 		~/.screenrc
ln -sf `pwd`/tmux.conf 		~/.tmux.conf

mkdir -p ~/.subversion/
ln -sf `pwd`/subversion.conf 	~/.subversion/config
ln -sf `pwd`/gitconfig 		~/.gitconfig

ln -sf `pwd`/xsession 		~/.xsession
ln -sf `pwd`/Xdefaults		~/.Xdefaults
if [ `which xrdb > /dev/null 2>&1` ]
then
	xrdb .Xdefaults
fi

ln -sf `pwd`/vimrc  		~/.vimrc
ln -sf `pwd`/dhexception.vim 	~/.vim/dhexception.vim
ln -sf `pwd`/python.vim 	~/.vim/python.vim
mkdir -p 			~/.vim/syntax/
ln -sf `pwd`/pig.vim 		~/.vim/syntax/

ln -sf `pwd`/bin		~/

if [ -d ~/Dropbox/System/Unix/ssh ]
then
	rm -rf ~/.ssh
	ln -sf ~/Dropbox/System/Unix/ssh/ ~/.ssh
fi
ln -sf ~/.ssh/authorized_keys 	~/.ssh/authorized_keys2
#ln -sf `pwd`/ssh_config	~/.ssh/config

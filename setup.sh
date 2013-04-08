mkdir -p ~/.shell_startup
ln -sf `pwd`/shell/aliases 	~/.shell_startup/aliases
ln -sf `pwd`/shell/environment 	~/.shell_startup/environment
ln -sf `pwd`/shell/eyecandy	~/.shell_startup/eyecandy
ln -sf `pwd`/shell/inputrc 	~/.inputrc

ln -sf `pwd`/shell/bashrc 	~/.bashrc
ln -sf `pwd`/shell/profile 	~/.profile


ln -sf `pwd`/gitconfig 		~/.gitconfig
ln -sf `pwd`/screenrc 		~/.screenrc
ln -sf `pwd`/tmux.conf 		~/.tmux.conf

ln -sf `pwd`/ssh_config		~/.ssh/config

# ln -sf `pwd`/xsession 	~/.xsession



ln -sf `pwd`/vimrc  		~/.vimrc
ln -sf `pwd`/dhexception.vim 	~/.vim/
mkdir -p ~/.vim/syntax/
ln -sf `pwd`/pig.vim 		~/.vim/syntax/

ln -sf `pwd`/bin		~/bin

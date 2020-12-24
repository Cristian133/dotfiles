.PHONY: bash tmux vim

bash:
	cp .bash_aliases ${HOME}/.bash_aliases

tmux:
	cp .tmux.conf ${HOME}/.tmux.conf

vim:
	cp -p .vimrc ${HOME}/.vimrc
	mkdir -p ${HOME}/.vim
	mkdir -p ${HOME}/.vim/backups
	mkdir -p ${HOME}/.vim/swaps
	mkdir -p ${HOME}/.vim/colors
	mkdir -p ${HOME}/.vim/undo
	mkdir -p ${HOME}/.vim/help
	mkdir -p ${HOME}/.vim/spell
	curl -LSso ${HOME}/.vim/colors/hybrid.vim https://raw.githubusercontent.com/w0ng/vim-hybrid/master/colors/hybrid.vim

all: .PHONY

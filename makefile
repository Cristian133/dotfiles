.PHONY: bash tmux vim

bash:
	cp .bash_aliases ${HOME}/.bash_aliases

tmux:
	cp .tmux.conf ${HOME}/.tmux.conf

vim:
	cp -p .vimrc ${HOME}/.vimrc
	mkdir -p ${HOME}/.config/nvim/
	cp -p ./nvim/init.vim ${HOME}/.config/nvim/
	mkdir -p ${HOME}/.vim
	mkdir -p ${HOME}/.vim/autoload
	curl -LSso ${HOME}/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
	mkdir -p ${HOME}/.vim/backups
	mkdir -p ${HOME}/.vim/bundle
	git clone https://github.com/preservim/nerdtree.git ${HOME}/.vim/bundle/nerdtree/
	git clone https://github.com/jlanzarotta/bufexplorer.git ${HOME}/.vim/bundle/bufexplorer/
	git clone https://github.com/preservim/nerdcommenter.git ${HOME}/.vim/bundle/nerdcommenter/
	mkdir -p ${HOME}/.vim/colors
	curl -LSso ${HOME}/.vim/colors/hybrid.vim https://raw.githubusercontent.com/w0ng/vim-hybrid/master/colors/hybrid.vim
	mkdir -p ${HOME}/.vim/help
	cp -p ./.vim/help/help ${HOME}/.vim/help/
	mkdir -p ${HOME}/.vim/plugin
	mkdir -p ${HOME}/.vim/spell
	cp -p ./.vim/spell/* ${HOME}/.vim/spell
	mkdir -p ${HOME}/.vim/swaps
	mkdir -p ${HOME}/.vim/undo

all: .PHONY

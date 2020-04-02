My personal .vimrc
(https://realpython.com/vim-and-python-a-match-made-in-heaven/#vim-extensions)

install vundle:
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

copy .vimrc to ~

Several dependencies need to be installed for YouCompleteMe to work:
	(https://github.com/ycm-core/YouCompleteMe#linux-64-bit)
	1. install cmake, vim and python
	apt install build-essential cmake vim python3-dev

	2. install mono-complete, go, node.js and npm
	
	3. compile YCM
	cd ~/.vim/bundle/YouCompleteMe
	python3 install.py --all

#! /bin/bash
# A script to provision the user's home dir with the vimrc in this repo / directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
FILE="vimrc"

if [ -e ~/.vimrc ]; then
	echo "error: .vimrc already exists in the home dir, remove it & re-run this script"
	exit 1
fi

if [ -e "${DIR}/${FILE}" ]; then
	# create a symbolic link in the home dir to .vimrc
	echo "create symlink to ~/.vim/vimrc in home dir..."
	ln -s "${DIR}/${FILE}" ~/.vimrc
	echo "done."
else
	echo "error: vimrc file not found in same dir as setup-vim.sh"
	exit 1
fi

# download vim-plug and put it in the autoload dir
echo "dowload vim-plug, place it in autoload dir..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "done."

# clone the vim-go repo
echo "clone vim-go repo..."
git clone https://github.com/fatih/vim-go.git ~/.vim/plugged/vim-go
echo "done."

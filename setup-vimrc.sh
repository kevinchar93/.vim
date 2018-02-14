#! /bin/bash
# A script to provision the user's home dir with the vimrc in this repo / directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
FILE="vimrc"

if [ -e ~/.vimrc ]; then
	echo "error: .vimrc already exists in the home dir, remove it & re-run this script"
fi

if [ -e "${DIR}/${FILE}" ]; then
	# create a symbolic link in the home dir to .vimrc
	ln -s "${DIR}/${FILE}" ~/.vimrc
else
	echo "error: vimrc file not found in same dir as setup-vim.sh"
fi

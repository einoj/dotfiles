cp vimrc ~/.vimrc
cp bashrc ~/.bashrc
source ~/.bashrc
if hash git 2>/dev/null; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
   echo "ERROR: cannot find command git.
Install git to download vim plugin Vundle, and re-run script"
fi


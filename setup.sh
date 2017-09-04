cp vimrc ~/.vimrc
cp bashrc ~/.bashrc
source ~/.bashrc
if hash git 2>/dev/null; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox
    mkdir ~/.vim/colors
    cp ~/.vim/bundle/gruvbox/colors/gruvbox.vim ~/.vim/colors/gruvbox.vim
else
   echo "ERROR: cannot find command git.
Install git to download vim plugin Vundle, and re-run script"
fi


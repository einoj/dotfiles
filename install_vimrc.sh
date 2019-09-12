cp ./vimrc ~/.vimrc
echo Installed new .vimrc in ~/

if [ -d ~/.vim/bundle/Vundle.vim ]
then
    echo Vundle is already installed
else
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

echo Installing plugins using vundle...
# -E to ignore the E185 colorscheme not installed error
echo Expecting E185
vim -E -c "PluginInstall" -c ":q" -c ":q"
echo Done!

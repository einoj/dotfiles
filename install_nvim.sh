cp -r nvim ~/.config/
echo Installed new nvim config under in ~/.config
echo "Installing packer package manager..."
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

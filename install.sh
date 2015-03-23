mkdir -p ~/.vim/backup
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
curl https://raw.githubusercontent.com/xinming90/vim/master/vimrc -o ~/.vimrc
vim +PluginInstall

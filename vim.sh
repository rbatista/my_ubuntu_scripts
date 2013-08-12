# pre-requisites
sudo apt-get install -y -quiet vim
sudo apt-get install -y -quiet curl

sudo apt-get install python-pip python-dev build-essential
sudo pip install --upgrade pip
sudo pip install --upgrade virtualenv

# pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
echo 'execute pathogen#infect()' >> ~/.vimrc
echo 'syntax on' >> ~/.vimrc
echo 'filetype plugin ident on' >> ~/.vimrc

# UltiSnips
git clone git@github.com:SirVer/ultisnips.git ~/.vim/bundle/ultisnips

# ctrlp
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim

# solarized
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized/
echo 'syntax enable' >> ~/.vimrc
echo 'set background=dark' >> ~/.vimrc
echo 'colorscheme solarized' >> ~/.vimrc

# powerline
git clone https://github.com/Lokaltog/powerline ~/.vim/bundle/powerline/
echo "set t_Co=256" > ~/.vimrc

# fugitive
git clone git://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive/

# line numbers
echo "set number" > ~/.vimrc

# Vim as default editor
export EDITOR=vim

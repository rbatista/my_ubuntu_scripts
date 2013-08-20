# pre-requisites
sudo apt-get install -y --quiet vim
sudo apt-get install -y --quiet curl

sudo apt-get install -y --quiet python-pip python-dev build-essential
sudo pip install --upgrade pip
sudo pip install --upgrade virtualenv

# pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
echo '" pathogen' >> ~/.vimrc
echo 'execute pathogen#infect()' >> ~/.vimrc
echo 'syntax on' >> ~/.vimrc
echo 'filetype plugin indent on' >> ~/.vimrc
echo '\n' >> ~/.vimrc

# UltiSnips
git clone https://github.com/SirVer/ultisnips.git ~/.vim/bundle/ultisnips
echo '" UltiSnips' >> ~/.vimrc
echo 'let g:UltiSnipsExpandTrigger="<tab>"' >> ~/.vimrc
echo 'let g:UltiSnipsJumpForwardTrigger="<c-j>"' >> ~/.vimrc
echo '\n' >> ~/.vimrc

# ctrlp
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim

# solarized
git clone https://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized/
echo '" solarized' >> ~/.vimrc
echo 'syntax enable' >> ~/.vimrc
echo 'set background=dark' >> ~/.vimrc
echo 'colorscheme solarized' >> ~/.vimrc
echo '\n' >> ~/.vimrc

# powerline
git clone https://github.com/Lokaltog/powerline ~/.vim/bundle/powerline/
echo '" Powerline' >> ~/.vimrc
echo 'set t_Co=256' >> ~/.vimrc
echo '\n' >> ~/.vimrc

# fugitive
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive/

# supertab
git clone https://github.com/ervandew/supertab.git ~/.vim/bundle/supertab/

# delimitMate
git clone https://github.com/Raimondi/delimitMate.git ~/.vim/bundle/delimitMate/

# neocomplcache
git clone https://github.com/Shougo/neocomplcache.vim.git ~/.vim/bundle/neocomplcache

# tcomment_vim
git clone https://github.com/tomtom/tcomment_vim.git~/.vim/bundle/tcomment_vim

# line numbers
echo '" numbering' >> ~/.vimrc
echo 'set number' >> ~/.vimrc
echo '\n' >> ~/.vimrc

# whitespaces
echo '" Trailing Whitespaces' >> ~/.vimrc
echo 'set list' >> ~/.vimrc
echo 'set listchars=""' >> ~/.vimrc
echo 'set listchars=tab:\ \' >> ~/.vimrc
echo 'set listchars+=trail:.' >> ~/.vimrc
echo 'set listchars+=extends:>' >> ~/.vimrc
echo 'set listchars+=precedes:<' >> ~/.vimrc
echo '\n' >> ~/.vimrc

echo '" Kills Trailing Whitespaces' >> ~/.vimrc
echo 'command! KillWhitespace :normal :%s/ *$//g<cr><c-o><cr>' >> ~/.vimrc
echo '\n' >> ~/.vimrc

# Vim as default editor
export EDITOR=vim

# Configure file type
# java
mkdir -p ~/.vim/ftplugin/
touch ~/.vim/ftplugin/java.vim
echo 'setlocal tabstop=4' >> ~/.vim/ftplugin/java.vim
echo 'setlocal shiftwidth=4' >> ~/.vim/ftplugin/java.vim
echo 'setlocal expandtab' >> ~/.vim/ftplugin/java.vim
echo 'setlocal autoindent' >> ~/.vim/ftplugin/java.vim
echo 'setlocal smarttab' >> ~/.vim/ftplugin/java.vim
echo 'setlocal formatoptions=croql' >> ~/.vim/ftplugin/java.vim

# Configure file detect
# gradle
mkdir -p ~/.vim/ftdetect/
touch ~/.vim/ftdetect/gradle.vim
echo 'au BufNewFile,BufRead *.gradle set filetype groovy' >> ~/.vim/ftdetect/gradle.vim

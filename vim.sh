#!/usr/bin/env bash

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
echo -e '\n' >> ~/.vimrc

# UltiSnips
git clone https://github.com/SirVer/ultisnips.git ~/.vim/bundle/ultisnips
echo '" UltiSnips' >> ~/.vimrc
echo 'let g:UltiSnipsExpandTrigger="<tab>"' >> ~/.vimrc
echo 'let g:UltiSnipsJumpForwardTrigger="<c-j>"' >> ~/.vimrc
echo 'set runtimepath+=~/.vim/vim-snippets/' >> ~/.vimrc
echo -e '\n' >> ~/.vimrc

# ctrlp
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
echo '"CtrP' >> ~/.vimrc
echo 'let g:ctrlp_custom_ignore = "build\|config\|.DS_Store$\|\.git$\|\.hg$\|\.svn$\|\.class$\|\.settings$"' >> ~/.vimrc
echo "autocmd! BufWritePost * :ClearAllCtrlPCaches" >> ~/.vimrc
echo -e '\n' >> ~/.vimrc

# solarized
git clone https://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized/
echo '" solarized' >> ~/.vimrc
echo 'syntax enable' >> ~/.vimrc
echo 'set background=dark' >> ~/.vimrc
echo 'colorscheme solarized' >> ~/.vimrc
echo 'set t_Co=256' >> ~/.vimrc
echo 'let g:solarized_termcolors=256' >> ~/.vimrc

echo -e '\n' >> ~/.vimrc

# airline
# git clone https://github.com/Lokaltog/powerline ~/.vim/bundle/powerline/

# powerline fonts
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.fonts/
mv PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts/

mkdir -p ~/.config/fontconfig/conf.d/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline

#echo '" Powerline' >> ~/.vimrc
echo '" airline' >> ~/.vimrc
echo 'set laststatus=2' >> ~/.vimrc
echo "let g:Powerline_symbols = 'fancy'" >> ~/.vimrc
echo 'let g:airline_powerline_fonts=1' >> ~/.vimrc
echo -e '\n' >> ~/.vimrc

# fugitive - git glupin
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive/

# supertab
git clone https://github.com/ervandew/supertab.git ~/.vim/bundle/supertab/

# delimitMate - automatic closing of quotes, parenthesis, brackets, etc.
git clone https://github.com/Raimondi/delimitMate.git ~/.vim/bundle/delimitMate/

# neocomplcache - keyword completion by cache in the current buffer
git clone https://github.com/Shougo/neocomplcache.vim.git ~/.vim/bundle/neocomplcache
echo -e '"neocompletechache\nlet g:neocomplcache_enable_at_startup = 1\n' >> ~/.vimrc

# tcomment_vim
git clone https://github.com/tomtom/tcomment_vim.git ~/.vim/bundle/tcomment_vim

#  syntastic - syntax verifier
git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic

# line numbers
echo '" numbering' >> ~/.vimrc
echo 'set number' >> ~/.vimrc
echo -e '\n' >> ~/.vimrc

# whitespaces
echo '" Trailing Whitespaces' >> ~/.vimrc
echo 'set list' >> ~/.vimrc
echo 'set listchars=""' >> ~/.vimrc
echo 'set listchars=tab:>-' >> ~/.vimrc
echo 'set listchars+=trail:.' >> ~/.vimrc
echo 'set listchars+=extends:>' >> ~/.vimrc
echo 'set listchars+=precedes:<' >> ~/.vimrc
echo -e '\n' >> ~/.vimrc

echo '" Kills Trailing Whitespaces' >> ~/.vimrc
echo 'command! KillWhitespace :normal :%s/ *$//g<cr><c-o><cr>' >> ~/.vimrc
echo -e '\n' >> ~/.vimrc

# Vim as default editor
echo -e '\n# vim as default editor\nexport EDITOR=vim' >> ~/.profile
source ~/.profile

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

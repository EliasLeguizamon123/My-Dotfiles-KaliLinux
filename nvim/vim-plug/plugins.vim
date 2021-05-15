" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        "autocmd VimEnter * PlugInstall
        "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

      " Better Syntax Support
        Plug 'sheerun/vim-polyglot'
        " File Explorer
        Plug 'scrooloose/NERDTree'
        " Auto pairs for '(' '[' '{'
        Plug 'jiangmiao/auto-pairs'
        " Airline for white and ugly bottom line 
        Plug 'vim-airline/vim-airline'
        " Themes for airline
        Plug 'vim-airline/vim-airline-themes'
        "Javascript collors Pangloss
        Plug 'pangloss/vim-javascript'
        "Coc
        Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
        "Indent Line 
        Plug 'Yggdroot/indentLine'
        "Nord Theme
        Plug 'arcticicestudio/nord-vim'
        "Bracey live server
        Plug 'turbio/bracey.vim'
call plug#end()

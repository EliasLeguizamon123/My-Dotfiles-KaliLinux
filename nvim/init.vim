set number
" Basics for Nvim

set title
set nowrap

"Set indent in 1 space
set tabstop=4
set shiftwidth=2
set softtabstop=2
set shiftround

set expandtab

set hidden
set ignorecase
set smartcase

set spelllang=en,es

"Nord configuration
"BG line cursor
let g:nord_cursor_line_number_background = 1

"Nord uniform diff lines
let g:nord_uniform_diff_background = 1

"Enable italic font
let g:nord_italic = 1

"Enable italic comments
let g:nord_italic_comments = 1

"Underline style enable
let g:nord_underline = 1

" Keymaps

let g:mapleader = ',' "leader key is ,

" Save progress whith CTRL + s
nnoremap <C-s> :w<CR>
vnoremap <C-s> :w<CR>
inoremap <C-s> :w<CR>

" Open init.vim ,+e
nnoremap <leader>e :e $MYVIMRC<CR> 
nnoremap <leader>o :e  ~/.config/nvim/vim-plug/plugins.vim<CR>
"Copy to clipboard
vnoremap <leader>y "+y
nnoremap <leader>y "+y

"Cut to clipboard
vnoremap <leader>d "+d
nnoremap <leader>d "+d

"Paste from clipboard
nnoremap <leader>p "+p
vnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>P "+P

"move to next buffer ,+l
nnoremap <leader>l :bnext<CR>

"move to previous buffer ,+j
nnoremap <leader>j :bprevious<CR>

"close actual buffer ,+q
nnoremap <leader>q :bdelete<CR>

"Source my Plugins for Plug-vim
source $HOME/.config/nvim/vim-plug/plugins.vim

"Airline VIM

"Define theme of airline
let g:airline_theme='nord'

"Enable tabline 
let g:airline#extensions#tabline#enabled = 1

"Separators of tabline (Default)
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"Format of directorys in my top zone
let g:airline#extensions#tabline#formatter = 'jsformatter'

"NERDTree basics
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-q> :NERDTreeClose<CR>
"Open NERDTree automatically when vim starts and put the cursor back in the
"other window
autocmd VimEnter * NERDTree | wincmd p

"Change default arrows
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"VIM devIcons

"Configure VIM in UTF-8
set encoding=UTF-8

"Coc basics
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
noremap <leader>gs :CocSearch

"Indent Line basics

"Specify a character to be used as indent line 
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

"Specifi whether the first indent level should be shown
let g:indentLine_showFirstIndetLevel=1

"Theme
colorscheme nord

"Bracey conf
nnoremap <leader>p :Bracey<CR>
nnoremap <leader>o :BraceyStop<CR>

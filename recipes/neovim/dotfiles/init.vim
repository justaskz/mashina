"------------------------------------------------
" PLUGINS
"------------------------------------------------
call plug#begin()

Plug 'nvim-tree/nvim-tree.lua'


" Plug 'numToStr/Comment.nvim'
" Plug 'commentary.vim'

" THEMES
Plug 'morhetz/gruvbox'

call plug#end()

"------------------------------------------------
" MAIN
"------------------------------------------------
" set colorscheme
colorscheme gruvbox

" enable dark theme
set background=dark

" show line numbers
set number

" enable syntax highlighting
syntax on

" enable mouse
set mouse=a

"------------------------------------------------
" KEYBINDINGS
"------------------------------------------------

" reload vimrc file
" nnoremap < :source $MYVIMRC<CR>
" nnoremap <leader>sv :source $MYVIMRC<CR>

" map q to b
" nnoremap q <NOP>

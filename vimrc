let mapleader = " "

runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()

syntax on
filetype plugin indent on
set noexpandtab
set shiftwidth=4
set tabstop=4

set hlsearch
set incsearch

set cc=72,80

if has('gui_running')
	" set gfn=Ubuntu_Mono:h12:cANSI
	set guioptions-=T
	set background=dark
	colorscheme solarized
else
	colorscheme slate
endif

" http://www.bestofvim.com/tip/switch-off-current-search/
nnoremap <silent> <Leader>/ :nohlsearch<CR>

" Quicker buffer switching
" http://vim.wikia.com/wiki/Easier_buffer_switching
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>

" Standard shortcuts for insert mode
" Ctrl-V pastes from clipboard
" Ctrl-Z to undo
inoremap <C-V> <C-R>*
inoremap <C-Z> <ESC>ui

" Reload vimrc on save
" http://www.bestofvim.com/tip/auto-reload-your-vimrc/
augroup reload_vimrc " {
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

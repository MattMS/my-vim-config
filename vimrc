set nocompatible


runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()


syntax on

filetype plugin indent on


let mapleader = " "

" Hide banner in file browser.
let g:netrw_banner=0

" Unite yank history
let g:unite_source_history_yank_enable = 1


" Allow backspace to work on existing text when entering insert mode.
" http://vim.wikia.com/wiki/Erasing_previously_entered_characters_in_insert_mode
set backspace=eol,indent,start

set colorcolumn=72,80

" Highlight the search text as you search for it.
set hlsearch

" Search as you type characters.
set incsearch

" Always show vim-airline.
set laststatus=2

set noexpandtab

set shiftwidth=4

set tabstop=4

set wildignore+=ENV*,*/tmp/*,*.pyc,*.so,*.swp,*.zip


if has('gui_running')
	if has("gui_win32")
		set guifont=Ubuntu\ Mono:h12
	else
		set guifont=Ubuntu\ Mono\ 12
	endif

	set guioptions-=L
	set guioptions-=m
	set guioptions-=r
	set guioptions-=T

	set background=dark

	colorscheme solarized

else
	colorscheme slate
endif


" http://www.bestofvim.com/tip/switch-off-current-search/
nnoremap <silent> <Leader>/ :nohlsearch<CR>

" Toggle relative line numbers in gutter.
nnoremap <Leader>i :set rnu!<CR>

" Quicker buffer switching
" http://vim.wikia.com/wiki/Easier_buffer_switching
nnoremap <Leader>d :bd<CR>
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>p :bp<CR>

" File browsing
nnoremap <Leader>e :Explore<CR>
nnoremap <Leader>E :Unite file -no-split<CR>
nnoremap <Leader>f :Unite buffer -quick-match<CR>

" Add new lines
nnoremap <Return> o<ESC>
nnoremap <S-Return> O<ESC>j

" Split line
nnoremap K i<CR><Esc>

" Ctrl-S to save
inoremap <silent> <C-S> <ESC>:w<CR>
nnoremap <silent> <C-S> :w<CR>
" Ctrl-Q to quit completely
nnoremap <silent> <C-Q> :qa<CR>

" Standard shortcuts for insert mode
" Ctrl-V pastes from clipboard
" Ctrl-Z to undo
inoremap <C-V> <C-R>*
inoremap <C-Z> <ESC>ui
"inoremap <C-I> <ESC>a

" Selection shortcuts for insert mode
inoremap <S-Left> <ESC>v
inoremap <S-Right> <ESC>lvl
inoremap <S-Up> <ESC>lvk
inoremap <S-Down> <ESC>lvj
inoremap <C-S-Left> <ESC>vb
inoremap <C-S-Right> <ESC>lve

" Closing brackets and quotes
" http://vim.wikia.com/wiki/Making_Parenthesis_And_Brackets_Handling_Easier
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i

" Standard shortcut for visual mode
" Ctrl-C copies to clipboard
vnoremap <C-C> "+y


" Shift-Space to trigger EasyMotion
nmap <silent> <S-Space> <Space><Space>
vmap <silent> <S-Space> <Space><Space>

nnoremap <Leader>y :Unite history/yank<CR>

" Unite file search
nnoremap <Leader>s :Unite -start-insert file_rec<CR>

" Git shortcuts
nnoremap <Leader>c :Gcommit<CR>
nnoremap <Leader>g :Gstatus<CR>
nnoremap <Leader>m :Gdiff<CR>

" Use Vim features that may not be compatible with Vi.
set nocompatible


runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()


" Turn on syntax highlighting.
syntax on

" Turn on file type detection, by file name extension and `#!` line.
" Used for syntax highlighting and indentation rules.
filetype plugin indent on


" Use space as the mapleader character.
let mapleader=" "

" View netrw keyboard shortcuts at 'netrw-browse-maps'.

" Hide banner in file browser.
let g:netrw_banner=0

" Show non-hidden files by default.
let g:netrw_hide=1

" 'a' cycles the hiding modes.
" 'c-h' allows editing the /hide list.
let g:netrw_list_hide='^\..*'

"let g:netrw_menu=0

" 'p' shows preview of selected file.
"let g:netrw_preview=1

" Ignore case when sorting files.
let g:netrw_sort_options='i'

" Show '^\.' files after all others.
let g:netrw_sort_sequence='^\.\.?[\/]$,*,^\.[^.\/]'

" Unite yank history.
let g:unite_source_history_yank_enable=1


" Maintain indentation level from the previous line.
"set autoindent

" Allow backspace to work on existing text when entering insert mode.
" http://vim.wikia.com/wiki/Erasing_previously_entered_characters_in_insert_mode
set backspace=eol,indent,start

" Keep a backup of a file when overwriting it.
"set backup

" Set lines reserved for messages at the bottom of the screen.
"set cmdheight=3

set colorcolumn=72,80

" Do not change tabs to spaces.
set noexpandtab

" Remember the last 50 commands and search patterns.
"set history=50

" Highlight the search text as you search for it.
set hlsearch

" Search as you type characters.
set incsearch

" Set which characters can appear in a word.
" @ for alphabet
" 48-57 for numbers
"set iskeyword=@,48-57,_
"set iskeyword+=-
"set iskeyword-=_

" 0 = show on horizontal split.
" 1 = show if 2+ windows.
" 2 = always show.
set laststatus=0

" Display tabs and end of line characters.
"set list

" Control the display of whitespace characters.
"set listchars=tab:>-,trail:-

" Show the cursor position in the lower right corner.
"set ruler

" Scroll veritcally at 2 remaining characters.
"set scrolloff=2

set shiftwidth=4

" Show the incomplete command in the lower right corner.
"set showcmd

" Show the current mode in the lower left corner.
"set showmode

" Scroll horizontally at 12 remaining characters.
"set sidescroll=12

set tabstop=4

" Allow moving to the previous or next line.
" Normal mode <BS>: b
" Normal mode <Space>: s
" Normal mode <Left> and <Right>: < and >
" Insert mode <Left> and <Right>: [ and ]
"set whichwrap=b,s,<,>,[,]

set wildignore+=ENV*,*/tmp/*,*.pyc,*.so,*.swp,*.zip

" Prevent Vim from wrapping long lines.
"set nowrap


if has('gui_running')
	if has("gui_win32")
		set guifont=Ubuntu\ Mono:h12
	else
		set guifont=Ubuntu\ Mono\ 12
	endif

	" Hide left scrollbar.
	" By default it only appears if there is more than one buffer visible.
	set guioptions-=L

	" Hide GUI menus.
	set guioptions-=m

	" Hide right scrollbar.
	" Always shown by default.
	set guioptions-=r

	" Hide GUI toolbar.
	set guioptions-=T

	" Default to the dark Solarized colorscheme.
	" Change with `set background=light`.
	set background=dark

	colorscheme solarized

else
	colorscheme slate
endif


" Set the textwidth to 72 in the file if the file type is 'text'.
"autocmd FileType text setlocal textwidth=72


" Keyboard mappings.
" <BS>
" <Enter>
" <Esc>
" <F1>
" <Left>
" <Right>
" <Space>
" \
"
" Use `:map` to list current mappings.

"
" Normal mode
"

" Stop highlighting matching text from the last search.
" http://www.bestofvim.com/tip/switch-off-current-search/
nnoremap <silent> <Leader>/ :nohlsearch<CR>

" Add a new line after the current one.
nnoremap <Return> o<ESC>

" Add a new line before the current one.
nnoremap <S-Return> O<ESC>j

" Shift-Space to trigger EasyMotion.
" This is followed by the direction/method of search.
nmap <silent> <S-Space> <Space><Space>

" Show buffers with single key switching.
nnoremap <Leader>b :Unite buffer -quick-match<CR>

" Show buffers with normal navigation.
" `d` deletes the highlighted buffer.
nnoremap <Leader>B :Unite buffer<CR>

" Start nerdcommenter (shortcut added by plugin).
" nnoremap <Leader>c

" [Set working directory to the current file](http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file)
nnoremap <Leader>C :cd %:p:h<CR>

" Delete the current buffer.
" Same as `:bd`.
nnoremap <Leader>d :bdelete<CR>

" View files in folder of current buffer.
nnoremap <Leader>e :Explore<CR>

nnoremap <Leader>E :Unite file -no-split<CR>

" Show buffers with single key switching.
nnoremap <Leader>f :Unite buffer -quick-match<CR>

" Show buffers with normal navigation.
" `d` deletes the highlighted buffer.
nnoremap <Leader>F :Unite buffer<CR>

" Toggle relative line numbers in gutter.
" Same as `:rnu`.
nnoremap <Leader>i :set relativenumber!<CR>

" Split line.
nnoremap K i<CR><Esc>

" Change to next buffer.
" Same as `:bn`.
nnoremap <Leader>n :bnext<CR>

" Change to previous buffer.
" Same as `:bp`.
nnoremap <Leader>p :bprevious<CR>

" Ctrl-Q to quit completely.
nnoremap <silent> <C-Q> :quitall<CR>

" Ctrl-S to save.
nnoremap <silent> <C-S> :write<CR>

" Unite file search
"nnoremap <Leader>s :Unite -start-insert file_rec<CR>

" Control window splits with `Space w` instead of `Ctrl+w`
nnoremap <Leader>w <C-W>

nnoremap <Leader>y :Unite history/yank<CR>


"
" Insert mode
"

" Arrow key selection shortcuts.
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

" Ctrl-S to save
inoremap <silent> <C-S> <ESC>:w<CR>

" Ctrl-V pastes from clipboard
inoremap <C-V> <C-R>*

" Ctrl-Z to undo
inoremap <C-Z> <ESC>ui


"
" Visual mode
"

" Shift-Space to trigger EasyMotion.
" This is followed by the direction/method of search.
vmap <silent> <S-Space> <Space><Space>

" Ctrl-C copies to clipboard
vnoremap <C-C> "+y

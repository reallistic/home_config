execute pathogen#infect()
call pathogen#helptags()

syntax on
"Allows backspacing text that wasn't added in the current insert
set backspace=indent,eol,start
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab hlsearch incsearch ignorecase smartcase laststatus=2
"set listchars=trail:░,nbsp:▪ list  " old
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅
" Clear search highlight using space
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
filetype plugin indent on

let python_highlight_all = 1
command FormatJSON :%!python -m json.tool


set statusline=%f%m%r%h%w\ [TYPE=%Y\ %{&ff}]\
            \ [%l\|%c\|%p%%]

" Python stuff
au FileType py setlocal autoindent
au FileType py setlocal smartindent
au FileType py setlocal textwidth=79 " PEP-8 Friendly

" Javascript stuff
au FileType javascript setlocal autoindent
au FileType javascript setlocal smartindent
au FileType javascript setlocal tabstop=2 shiftwidth=2


" CS stuff bleh
au FileType cs setlocal tabstop=4 shiftwidth=4 noexpandtab
au FileType cs setlocal listchars=tab:\ \ 
au FileType cs setlocal autoindent
au FileType cs setlocal smartindent
au FileType cs setlocal fileformat=dos


" NERD_tree config
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
map <silent> <C-n> :NERDTreeToggle<CR>

" TagList Plugin Configuration
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
let Tlist_Use_Right_Window = 1
let Tlist_File_Fold_Auto_Close = 1
map <F7> :TlistToggle<CR>

" Viewport Controls
" " ie moving between split panes
map <silent>,h <C-w>h
map <silent>,j <C-w>j
map <silent>,k <C-w>k
map <silent>,l <C-w>l

" Pyflakes
" let g:pyflakes_use_quickfix = 0


" syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers = ['pylint', 'pyflakes', 'flake8', 'python']


" Make the mac clipboard work
set clipboard=unnamed

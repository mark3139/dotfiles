set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'Shougo/neocomplcache.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'tomasr/molokai'
Bundle 'hdima/python-syntax'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-scripts/matchit.zip'
Bundle 'Raimondi/delimitMate'
Bundle 'plasticboy/vim-markdown'
Bundle 'pangloss/vim-javascript'
Bundle 'nono/jquery.vim'
Bundle 'thiderman/nginx-vim-syntax'

filetype plugin indent on

if executable('ctags')
    Bundle 'majutsushi/tagbar'
endif
" tagbar setting
map <leader>tt :TagbarToggle<CR>

" ycm setting
let g:ycm_filetype_blacklist = {'css':1, 'html':1, 'markdown':1, 'javascript': 1, 'xml':1, 'vim':1}

" neocomplache setting
let g:neocomplcache_enable_at_startup = 1
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" syntastic setting
let g:syntastic_python_checkers=['flake8', 'python']
let g:syntastic_auto_loc_list = 1

" nerdtree setting
map <leader>e :NERDTreeToggle<CR>

" basic setting
set shiftwidth=4
set smarttab
set smartindent
set expandtab
set hlsearch
set ignorecase
set incsearch
set smartcase   
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <Space> <C-f>

autocmd FileType python set colorcolumn=80

" tab setting
autocmd FileType javascript,html,xml set shiftwidth=2

" fold setting
autocmd FileType python set fdm=indent


highlight OverLength ctermbg=red ctermfg=white guibg=#592929 
match OverLength /\%81v.\+/

" color setting
syntax on
set background=dark
color molokai

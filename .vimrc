syntax on
set nu
set relativenumber
set noswapfile
set ruler
set cursorline
set cursorcolumn

"设置配色主题
syntax enable
set background=dark
colorscheme solarized

"对齐
set autoindent
set smartindent

"高亮搜索结果
set hlsearch

"快速匹配      
set incsearch 

"backspace可用
set backspace=indent,eol,start

"当前行之间交错时使用4个空格
set shiftwidth=4

"tab设置为4
set tabstop=4
set expandtab

"root权限保存
cmap w!! w !sudo tee > /dev/null %

map <F3> :NERDTreeToggle<CR>

"use pathogen to excute pyflakes and flake8
"execute pathogen#infect()
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0 
let g:syntastic_auto_loc_list = 0 
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']

"use Vundle to manage plugins!
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'fatih/vim-go'
Plugin 'vim-syntastic/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'google/yapf', { 'rtp': 'plugins/vim' }

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on 

let NERDTreeIgnore = ['\.pyc$']
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd FileType c,cpp,java,ruby,python,yaml autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" go settings
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
"let g:go_fmt_command = "goimports"
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)

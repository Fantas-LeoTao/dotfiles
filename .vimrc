syntax on
set nu
set background=light
"编辑模式下右下角显示当前的行号列号
set ruler

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

"去掉有关vi一致性模式，避免以前版本的bug和局限
set nocompatible

"为方便复制，用<F2>开启/关闭行号显示
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

"粘贴模式
set pastetoggle=<F12>

"检测文件类型关闭
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()

filetype plugin indent on 

"set nerdtree
map <F3> :NERDTreeToggle<CR>

"use pathogen to excute pep8
execute pathogen#infect()


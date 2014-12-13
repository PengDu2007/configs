set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" vim go syntax start
Plugin 'fatih/vim-go'
" vim go syntax end

" vim color scheme start
Plugin 'altercation/vim-colors-solarized'
Plugin 'molokai'
Plugin 'endel/vim-github-colorscheme'
" vim color scheme end

" vim markdown syntax start
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" vim markdown syntax start

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set backspace=indent,eol,start
"显示行号
set number
"高亮显示匹配的括号
set showmatch
"制表符为4
set tabstop=4
"统一缩进为4
set softtabstop=4
set shiftwidth=4
"用空格代替制表符
set expandtab
"不要用空格代替制表符
set noexpandtab
"显示状态行
set ruler
"设定默认解码
set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gb2312,gbk,cp936
"在搜索时忽略大小写
set ignorecase
"自动对齐
"set autoindent
"智能对齐
"set smartindent
"从不备份
set nobackup
"禁止生成临时文件
set noswapfile
"显示文件编码
"set fileencoding

" 突出当前列,行
"set cursorcolumn
set cursorline
" 代码折叠
set foldenable
"光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3

" for solarized color
"set background=dark
"colorscheme solarized

" for molokai color
"colorscheme molokai

" for github color
colorscheme github
set t_Co=256

" vim-markdown
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_initial_foldlevel=1
let g:vim_markdown_no_default_key_mappings=1
let g:vim_markdown_math=1


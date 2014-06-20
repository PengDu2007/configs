" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"author : woniu <peng_du2007@qq.com>
"date : 2013-11-22
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backspace=indent,eol,start
"语法高亮
syntax enable
syntax on
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
"set noexpandtab
"显示状态行
set ruler
"设定默认解码
set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gb2312,gbk,cp936
"在搜索时忽略大小写
set ignorecase
"自动对齐
set autoindent
"智能对齐
set smartindent
"从不备份
set nobackup
"禁止生成临时文件
set noswapfile
"显示文件编码
"set fileencoding
"设置配色方案,配色方案目录:/usr/share/vim/vim73/color
"colorscheme solarized
"set background=dark
"set t_Co=256
"突出当前列,行
"set cursorcolumn
set cursorline
" 代码折叠
set foldenable
" 折叠方法
" manual 手工折叠
" indent 使用缩进表示折叠
" expr 使用表达式定义折叠
" syntax 使用语法定义折叠
" diff 对没有更改的文本进行折叠
" marker 使用标记进行折叠, 默认标记是 {{{ 和 }}}
set foldmethod=indent
set foldlevel=99

"光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3

"关闭文件类型检测以及插件载入
filetype off
filetype plugin indent off

"设置golang语法高亮
"filetype off
"filetype plugin indent off
set runtimepath+=$HOME/.vim/vim-go
"filetype plugin indent on
"syntax on

"设置markdown语法高亮
"filetype off
"filetype plugin indent off
set runtimepath+=$HOME/.vim/vim-markdown


filetype plugin indent on
syntax on

"显示tab,space
set list
set lcs=tab:>-,trail:-

"新建php,go,md,sh文件,自动插入文件头
autocmd BufNewFile *.php,*.go,*.md,*.sh exec ":call SetTitle()"
autocmd BufNewFile * normal G
func SetTitle()
    if &filetype == 'sh'
        call setline(1,"\#####################################")
        call append(line("."), "\# File Name: ".expand("%"))
        call append(line(".")+1, "\# Author: woniu")
        call append(line(".")+2, "\# Mail: peng_du2007@qq.com")
        call append(line(".")+3, "\# Created Time: ".strftime("%c"))
        call append(line(".")+4, "\#####################################")
        call append(line(".")+5, "\#!/bin/bash")
        call append(line(".")+6, "")
    else
        call setline(1, "/**********************************************")
        call append(line("."), "> File Name: ".expand("%"))
        call append(line(".")+1, "> Author: woniu")
        call append(line(".")+2, "> Mail: peng_du2007@qq.com")
        call append(line(".")+3, "> Created Time: ".strftime("%c"))
        call append(line(".")+4, "*************************************/")
        call append(line(".")+5, "")
    endif

    if &filetype == 'go'
        call append(line(".")+6, "package main")
        call append(line(".")+7, "import (\"fmt\")")
        call append(line(".")+8, "")
        
    endif
endfunc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif


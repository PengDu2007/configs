""""""""""""""""""""""""""""""""""""
"author : woniu <peng_du2007@qq.com>
"date : 2013-11-22
""""""""""""""""""""""""""""""""""""
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
colorscheme molokai
set t_Co=256
"colorscheme solarized
"set background=dark
"set t_Co=256
"突出当前列,行
set cursorcolumn
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
""""""""""""""""""""""""""""""""""

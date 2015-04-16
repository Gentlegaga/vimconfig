if has("win32")
    let $VIMFILES = $VIM.'/vimfiles'
    let $V = $VIM.'/_vimrc'
else
    let $VIMFILES = $HOME.'/.vim'
    let $V = $HOME.'/.vimrc'
endif

if has("unix")
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
else
    set rtp+=~/vimfiles/bundle/vundle/
    call vundle#rc('$HOME/vimfiles/bundle/')
endif

Bundle 'gmarik/vundle'
Bundle 'godlygeek/tabular'
Bundle 'plasticboy/vim-markdown'
"Bundle 'AutoComplPop' "removed this for YouCompleteMe
Bundle 'Valloric/YouCompleteMe'
Bundle 'Valloric/ListToggle'
Bundle 'scrooloose/syntastic'
"Colorscheme
Bundle 'tomasr/molokai'
Bundle 'altercation/vim-colors-solarized'
" 状态栏
Bundle 'Lokaltog/vim-powerline'
" 可视化关联缩进
Bundle 'nathanaelkane/vim-indent-guides'
" 可视化书签
Bundle 'kshenoy/vim-signature'
" 查找插件 依赖ack
Bundle 'dyng/ctrlsf.vim'
" 快速注释
Bundle 'scrooloose/nerdcommenter'
" 代码框架补全
Bundle 'honza/vim-snippets'
" 快速选中括号等结对符之间的内容
Bundle 'gcmt/wildfire.vim'
" 可视化打开的文件Buffer
Bundle 'fholgado/minibufexpl.vim'
" 优化行内快速移动
Bundle 'Lokaltog/vim-easymotion'
" 树型Undo记录
Bundle 'vim-scripts/Gundo'
" 模糊文件查找
Bundle 'kien/ctrlp.vim'
" Multiple Cursors
Bundle 'terryma/vim-multiple-cursors'
" 自动去掉行尾空格
Bundle 'dongweiming/vary.vim'
" Text-objs 系列扩展魔法的施法前件
"Bundle 'coderifous/textobj-word-column.vim' 
"This plugins provides text-objs of 'c'( col based on word) and 'C' (col based on WORD)
"Bundle 'vim-indent-object' 
"This plugin provides text-objs of 'i'(Indentation level and lines above/below.) and 'l'( Indentation level and lines above/below.)
"Bundle 'argtextobj.vim'
"This plugin provides a text-object 'a' (argument).
" What this script does is more than just typing F,dt, because it recognizes inclusion relationship of parentheses.

" Here follows motions
"Bundle 'kana/vim-smartword'
" http://www.vim.org/">welcome home : vim online; 
"  # #   # #   #  #  ##  ##  #  #  ##  ##  # #  vim orginally moves like this;
"  # #     #      #   #   #     #   #   #    #  with smartword vim moves like;

" 关闭自动备份
set nobackup
set noswapfile
" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on
" 定义快捷键的前缀，即<Leader>
let mapleader=";"
" 定义快捷键到行首和行尾
nmap lb 0
nmap le $
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
"nmap <Leader>q :q<CR> "this keybind is conflict with YouCompleteMe
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" 定义快捷键在结对符之间跳转，助记pair
nmap <Leader>pa %


" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu
" 去掉输入错误提示音
set noeb
" 允许鼠标定位
"set mouse=a
"set selection=exclusive
"set selectmode=mouse,key
" 使退格键正常处理indent,eol,start等
set backspace=2


" 自动去掉行尾空格的vary配置
let g:auto_striptrail = "python,ruby"
let g:auto_striptab = "python,ruby,cpp"


" 配色方案
set background=dark
"colorscheme solarized
colorscheme molokai
"colorscheme default

" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T


" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
set cursorcolumn


" 高亮显示搜索结果
set hlsearch
" 禁止折行
set nowrap


" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on


" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
" 不要图形按钮
set go=


" 可视化关联缩进
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle


" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable


" vim-singature 快捷键
let g:SignatureMap = {
  \ 'Leader'	     :  "m",
  \ 'PlaceNextMark'      :  "m,",
  \ 'ToggleMarkAtLine'   :  "m.",
  \ 'PurgeMarksAtLine'   :  "m-",
  \ 'DeleteMark'	 :  "dm",
  \ 'PurgeMarks'	 :  "mda",
  \ 'PurgeMarkers'       :  "m<BS>",
  \ 'GotoNextLineAlpha'  :  "']",
  \ 'GotoPrevLineAlpha'  :  "'[",
  \ 'GotoNextSpotAlpha'  :  "`]",
  \ 'GotoPrevSpotAlpha'  :  "`[",
  \ 'GotoNextLineByPos'  :  "]'",
  \ 'GotoPrevLineByPos'  :  "['",
  \ 'GotoNextSpotByPos'  :  "mn",
  \ 'GotoPrevSpotByPos'  :  "mp",
  \ 'GotoNextMarker'     :  "[+",
  \ 'GotoPrevMarker'     :  "[-",
  \ 'GotoNextMarkerAny'  :  "]=",
  \ 'GotoPrevMarkerAny'  :  "[=",
  \ 'ListLocalMarks'     :  "ms",
  \ 'ListLocalMarkers'   :  "m?"
  \ }


" 使用 ctrlsf.vim插件在工程内全局查找光标所在关键字，设置快捷键。快捷键速记法：search in project
nnoremap <Leader>sp :CtrlSF<CR>


" 替换函数。参数说明：
" confirm：是否替换前逐一确认
" wholeword：是否整词匹配
" replace：被替换字符串
function! Replace(confirm, wholeword, replace)
  wa
  let flag = ''
  if a:confirm
    let flag .= 'gec'
  else
    let flag .= 'ge'
  endif
  let search = ''
  if a:wholeword
    let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
  else
    let search .= expand('<cword>')
  endif
  let replace = escape(a:replace, '/\&~')
  execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
endfunction

" 快捷键for替换
" 不确认、非整词
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 不确认、整词
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、非整词
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、整词
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>


" 代码框架补全模版路径
"let g:UltiSnipsSnippetDirectories=["UltiSnips"]
" UltiSnips 的 tab 键与 YCM 冲突，重新设定
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"


" 快速选中结对符之间文字快捷键 Space 按一次选择最近一层内文本，按两次选择两层内文本
" 快捷键
map <SPACE> <Plug>(wildfire-fuel)
vmap <S-SPACE> <Plug>(wildfire-water)
" 适用于哪些结对符
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "i>", "ip"]


" 可视化打开文件的Buffer的插件快捷键
" 显示/隐藏 MiniBufExplorer 窗口
map <Leader>bl :MBEToggle<cr>
" buffer 切换快捷键
map <C-Tab> :MBEbn<cr>
map <C-S-Tab> :MBEbp<cr>


" 设置环境保存项
set sessionoptions="blank,buffers,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"
" 保存 undo 历史
set undofile
set undodir=$VIMFILES/\_undofiles
set undolevels=1000

" 保存快捷键
map <leader>ss :mksession! my.vim<cr> :wviminfo! my.viminfo<cr>
" 恢复快捷键
map <leader>rs :source my.vim<cr> :rviminfo my.viminfo<cr>


" 调用 gundo 树
nnoremap <Leader>ud :GundoToggle<CR>


" YouCompleteMe Config
" YCM 补全菜单配色
" 菜单
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" 选中项
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 引入 C++ 标准库tags
set tags+=/data/misc/software/misc./vim/stdcpp.tags
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>; <C-x><C-o>
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1
" Using omnifunc for Java
let g:EclimCompletionMethod = 'omnifunc'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""新文件标题""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""新建.c,.h,.sh,.java文件，自动插入文件头

"autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()"

"""定义函数SetTitle，自动插入文件头

"func SetTitle()

"    "如果文件类型为.sh文件

"    if &filetype == ‘sh‘

"        call setline(1,"\#########################################################################")

"        call append(line("."), "\# File Name: ".expand("%"))

"        call append(line(".")+1, "\# Author: YourName")

"        call append(line(".")+2, "\# mail: YourEmail")

"        "call append(line(".")+3, "\# Created Time: ".strftime("%c"))
"        call append(line(".")+3, "\# Created Time: ".strftime("%Y-%m-%d",localtime()))

"        call append(line(".")+4, "\#########################################################################")

"        call append(line(".")+5, "\#!/bin/bash")

"        call append(line(".")+6, "")

"    else

"        call setline(1, "/*************************************************************************")

"        call append(line("."), "    > File Name: ".expand("%"))

"        call append(line(".")+1, "    > Author: Gentlegaga")

"        call append(line(".")+2, "    > Mail: speedtog@qq.com")

"        " 同样的 改变时间格式
"        "call append(line(".")+3, "    > Created Time: ".strftime("%c"))
"        call append(line(".")+3, "    > Created Time: ".strftime("%Y-%m-%d",localtime()))

"        call append(line(".")+4, " ************************************************************************/")

"        call append(line(".")+5, "")

"    endif

"    if &filetype == ‘cpp‘

"        call append(line(".")+6, "#include<iostream>")

"        call append(line(".")+7, "using namespace std;")

"        call append(line(".")+8, "")

"    endif

"    if &filetype == ‘c‘

"        call append(line(".")+6, "#include<stdio.h>")

"        call append(line(".")+7, "")

"    endif

"    "新建文件后，自动定位到文件末尾

"    autocmd BufNewFile * normal G

"endfunc

"" Suzzz：  模仿上面，新建python文件时，添加文件头

"autocmd BufNewFile *py exec ":call SetPythonTitle()"

"func SetPythonTitle()
"    call setline(1,"#!/usr/bin/env python")
"    call append( line("."),"#-*- coding: utf-8 -*-" )
"    call append(line(".")+1," ")
"    call append(line(".")+2, "\# File Name: ".expand("%"))
"    call append(line(".")+3, "\# Author: Gentlegaga")
"    call append(line(".")+4, "\# mail: speedtog@qq.com")
"    call append(line(".")+5, "\# Created Time: ".strftime("%Y-%m-%d",localtime()))
"endfunc


"C，C++ 按F5编译运行

map <F5> :call CompileRunGcc()<CR>

func! CompileRunGcc()

    exec "w"

    if &filetype == ‘c‘

        exec "!g++ % -o %<"

        exec "! ./%<"

    elseif &filetype == ‘cpp‘

        exec "!g++ % -o %<"

        exec "! ./%<"

    elseif &filetype == ‘java‘

        exec "!javac %"

        exec "!java %<"

    elseif &filetype == ‘sh‘

        :!./%

    endif

endfunc

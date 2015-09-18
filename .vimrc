" 文件类型检测
filetype on
" 加载不同语法高亮插件
filetype plugin on

"" 常用快捷键操作
" 定义快捷键前缀,<Leader>
let mapleader=";"
" key mappings
nmap lb 0
nmap le $
" 选中文本复制到粘贴板
vnoremap <Leader>y "+y
" 从粘贴板粘贴内容 
nmap <Leader>p "+p
" 关闭当前窗口 
nmap <Leader>q :q<CR>
" 保存当前窗口 
nmap <Leader>w :w<CR>
" All windows:save and quite
nmap <Leader>WQ :wa<CR>:q<CR>
" 直接退出强制!
nmap <Leader>Q :qa!<CR>:q<CR>
" 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转到右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转到左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转到上方的窗口
nnoremap <Leader>kw <C-W>k
" 跳转到下方的窗口
nnoremap <Leader>jw <C-W>j
" 定义快捷键在结对符之间跳转，助记pair
nmap <Leader>pa %

"" 搜索补全
"" by hackingangle-可能被其他插件依赖
" 实时搜索
set incsearch
" 搜索大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式只能补全
set wildmenu


"" 插件管理工具
" pathogen 自身置于独立目录中，指定路径
runtime autoload/pathogen.vim
" 运行 pathogen
execute pathogen#infect()


"" 添加辅助信息
" 显示状态栏
set laststatus=2
" 高亮当前行|列
set cursorline
" set cursorcolumn
" 开启行号
set nu
" 显示光标当前位置
set ruler
" 高亮当前搜索结果
set hlsearch
" 禁止折行
set nowrap
" 字体，如何在linux下生效
" set gfw=幼圆:h10:cGB2312

"" 加载主题[theme]
set background=dark
" set background=light
colorscheme solarized

"" 代码分析
" 开启语法高亮功能
syntax enable
" 允许使用指定语法高亮配色方案替换默认方案
syntax on

"" 代码缩进
""" 重要命令
""" 1. retab，按照下列规则，重新处理tab和空格
" 自适应不同语言的智能缩进
filetype indent on
" tab转为空格
set expandtab
" tab占空格数量,编辑时
set tabstop=4
" tab占空格数量,格式化时
set shiftwidth=4
" 连续数量空格视为一个tab
set softtabstop=4
"# 增强符号范围定位插件-indent-guides#
let g:indent_guides_enable_on_vim_startup=1
"# 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
"# 色块宽度
let g:indent_guides_guide_size=1
"# 快捷键 i 开/关缩进可视化
nmap <silent> <Leader>i <Plug>IndentGuidesToggle

"" 代码折叠
" 基于缩进或语法进行代码折叠
" set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

"" 接口快速切换插件，header和cpp之间
" *.cpp 和 *.h 间切换
nmap <Leader>ch :A<CR>
" 子窗口中显示 *.cpp 或 *.h
nmap <Leader>sch :AS<CR>


"" 工程化管理NERDtree
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=0
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

"" 与系统中文输入法冲突
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,cp936

 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  
" NORMAL模式下TABS快速切换
"  
:nn <Leader>1 1gt
:nn <Leader>2 2gt
:nn <Leader>3 3gt
:nn <Leader>4 4gt
:nn <Leader>5 5gt
:nn <Leader>6 6gt
" 快速打开tab页
:nn <Leader>tn :tabnew<CR>
:nn <Leader>tw :tabc<CR>

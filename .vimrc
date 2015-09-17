" 文件类型检测
filetype on
" 加载不同语法高亮插件
filetype plugin on
" 开启行号
set nu

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


" 定义快捷键前缀,<Leader>
let mapleader=";"
" 文件类型检测
filetype on
" 加载不同语法高亮插件
filetype plugin on
" key mappings
nmap lb 0
nmap le $
" 选中文本复制到粘贴板
vnoremap <Leader>y "+y
" 从粘贴板粘贴内容 
nmap <Leader>p "+p
" 关闭当前窗口 
nmap <Leader>q :q<CR>
" 保存 当前窗口 
nmap <Leader>w :w<CR>
" nmap
" by wanggang11
set nu


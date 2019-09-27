" 常用设置
" 设置行号
set number

" 设置配色方案
:colorscheme desert

" 高亮当前行号
:set cursorline
:hi cursorline cterm=none
" :hi cursorlinenr ctermfg=red
:hi cursorlinenr ctermfg=235

" 自动居中 vim 搜索结果
:nmap n nzz  
:nmap p pzz

" 设置注释空格
let g:NERDSpaceDelims=1


" 设置插件
call plug#begin('~/.vim/plugged')
" 注释插件
Plug 'scrooloose/nerdcommenter'
call plug#end()

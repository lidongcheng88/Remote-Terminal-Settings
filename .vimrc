" 常用设置
" 设置行号
set number

" 设置配色方案
colorscheme desert

" 高亮当前行号
set cursorline
hi cursorline cterm=none
" hi cursorlinenr ctermfg=red
hi cursorlinenr ctermfg=235

set ignorecase  " 大小写不敏感
" set noignorecase  " 大小写敏感


" 键映射
" 将 \ 设置为 , 方便操作
" let noremapleader=','

" 默认 normal 模式下
" 自动居中 vim 搜索结果
noremap n nzz  
noremap N Nzz
" Enter 插入空行
noremap <Enter> o<Esc>

" insert 模式下
" Ctrl + D 删除空行
inoremap <c-d> <Esc>ddi

" Command 模式下
" :w!! 使用 sudo 权限保存
cnoremap w!! w !sudo tee % >/dev/null


" 设置插件
call plug#begin('~/.vim/plugged')
" 注释插件
Plug 'scrooloose/nerdcommenter'
" 默认打开上次编辑位置
Plug 'farmergreg/vim-lastplace'
call plug#end()


" 插件自定义设置
" 设置注释空格
let g:NERDSpaceDelims=1

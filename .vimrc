" 常用设置
" 设置行号
set number

" 设置配色方案
colorscheme desert

" 高亮当前行号
set cursorline
hi cursorline cterm=none
" hi cursorlinenr ctermfg=red
" hi cursorlinenr ctermfg=235
hi cursorlinenr ctermfg=14

set ignorecase  " 大小写不敏感
" set noignorecase  " 大小写敏感

" Tab 设置
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent


" 键映射
" 默认 normal 模式下
" 自动居中 vim 搜索结果
noremap n nzz  
noremap N Nzz
" F3 打开目录树
nnoremap <silent> <F3> :NERDTree<CR>

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
" 当前单词添加下划线
Plug 'itchyny/vim-cursorword'
" 成对补全删除
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
" python 源码跳转与代码补全
Plug 'davidhalter/jedi-vim'
" 目录树
Plug 'scrooloose/nerdtree'
call plug#end()


" 插件自定义设置
" 设置注释空格
let g:NERDSpaceDelims=1
" Jedi 补全快捷键
let g:jedi#completions_command = "<C-l>"

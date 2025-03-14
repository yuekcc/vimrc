" 补充 ~/.vim 到运行目录
set rtp+=~/.vim

" 设置英文界面
set langmenu=en_US.UTF-8
language en_US.UTF-8

" 当文件被外部修改时加载新版本
set autoread
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif

" 自动保存
set updatetime=3000
autocmd CursorHold,CursorHoldI * silent! update

" 禁止创建备份文件
set nobackup
set nowritebackup

" 禁用 vi 兼容模式
set nocompatible

set novisualbell
set noerrorbells

" ------------------------------
" UI 设置
" ------------------------------

" gvim 设置
if has('gui')
    " 设置 gvim 渲染引擎
    set rop=type:directx
    " 设置字体
    set guifont=Maple\ Mono\ Normal\ NF\ CN:h13
    " 关闭窗口菜单等
    set guioptions-=T
    set guioptions-=m
    set guioptions-=L
    set guioptions-=r
    set guioptions-=b
    set guioptions-=e
    set nolist

    " 高亮当前行
    set cursorline

    " set sessionoptions+=resize,winsize
    " autocmd VIMEnter * :source ~/.vim/session.vim
    " autocmd VIMLeave * :mksession! ~/.vim/session.vim
endif

" 行号
set number

" 语法高亮
syntax enable
syntax on

" 显示匹配的括号
set showmatch
set matchtime=2 " 匹配括号高亮显示的时间(1/10秒)

" 不显示启动消息
set shortmess+=I

" 更改光标形状
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50

" 显示最后一行
set display=lastline

" 如果你使用的是终端，启用 256 色支持
set t_Co=256
set termguicolors

" 在状态行显示文件类型
set statusline+=%{&filetype}
set statusline=[%f]%m\ %y\ %r%=%l:%c,\ %L\ lines
set laststatus=2

set cmdheight=1
set showcmd
set showmode

" ------------------------------
" 搜索设置
" ------------------------------

set ignorecase
set smartcase
set incsearch
set hlsearch


" ------------------------------
" 编辑设置
" ------------------------------

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,gb18030
set ffs=unix,dos,mac
set termencoding=utf-8

" 使用空格缩进，而不是制表符
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" 打开 c 语言缩进优化
set cindent

" 允许 vim 自带脚本根据文件类型自动设置缩进
if has('autocmd')
    filetype plugin indent on
endif

" 自动换行
set wrap
set linebreak
set breakindent

" 设置 backspace 键模式
set bs=eol,start,indent

set completeopt=longest,menu
set wildmenu
set wildmode=longest,list,full
set wildignore=*.o,*~,*.pyc,*.class

" -----------------------------
" keymaps
" -----------------------------

" windows 禁用 alt 操作菜单
set winaltkeys=no

" 打开功能键超时检查
set ttimeout
set ttimeoutlen=50

" 映射快捷键
" 例如：将 <leader> 键设置为空格
let mapleader = " "

" 保存文件并退出
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>



" 为方便复制到系统剪贴板
vmap <Leader>y "+y
vmap <Leader>p "+p
nmap <Leader>p "+p

" insert 模式下使用 emacs 键位
inoremap <c-a> <home>
inoremap <c-e> <end>
inoremap <c-d> <del>

" alt+hjkl 上下左右移动光标
inoremap <m-j> <up>
inoremap <m-k> <down>
inoremap <m-h> <left>
inoremap <m-l> <right>

" shift+enter 增加一空行
inoremap <S-cr> <esc>o

" tab 创建
noremap <leader>tc :tabnew<cr>
noremap <leader>tq :tabclose<cr>
noremap <leader>tn :tabnext<cr>
noremap <leader>tp :tabprev<cr>
noremap <leader>to :tabonly<cr>

" 窗口分割
nnoremap <c-\> :vsplit<cr>
nnoremap <c-S-\> :split<cr>
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l


" -----------------------------
" 插件
" -----------------------------

call plug#begin('~/.vim/plugged')
    Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
    Plug 'editorconfig/editorconfig-vim'
call plug#end()

" 快速打开 NERDTree (如果已安装)
nnoremap <leader>n :NERDTreeToggle<CR>

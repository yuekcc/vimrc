# .vimrc

参考了 [skywind3000/vim-init](https://github.com/skywind3000/vim-init)。

当前状态：

- [x] 基本设置
    - [x] gvim
    - [x] Maple Mono Normal NF CN 字体
- [x] 基本的 keymaps
- [x] 没有插件

## keymaps

leader = <kbd>空格</kbd>

```vimrc
" 映射快捷键
" 例如：将 <leader> 键设置为空格
let mapleader = " "

" 保存文件并退出
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" 快速打开 NERDTree (如果已安装)
nnoremap <leader>n :NERDTreeToggle<CR>

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
```


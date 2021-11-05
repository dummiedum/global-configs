set number
set nowrap

colorscheme torte

syntax on
filetype plugin on
set tabstop=4
set shiftwidth=4
set autowrite
set autoindent
set ignorecase
set smartcase
set nobackup
set expandtab
set scrolloff=10
" Control+s to tab backwards
noremap <C-s> :<C-U>tabnext<CR>
inoremap <C-s> <C-\><C-N>:tabnext<CR>
cnoremap <C-s> <C-C>:tabnext<CR>
" Control+a to tab forwards
noremap <C-a> :<C-U>tabprevious<CR>
inoremap <C-a> <C-\><C-N>:tabprevious<CR>
cnoremap <C-a> <C-C>:tabprevious<CR>

autocmd FileType c nnoremap <C-l> :!gcc "%:p" -o "%:p".out && "%:p".out <Enter>
autocmd FileType c inoremap <C-l> <C-\><C-N>:!gcc "%:p" -o "%:p".out && "%:p".out <Enter>
autocmd FileType cpp nnoremap <C-l> :!g++ "%:p" -o "%:p".out && "%:p".out <Enter>
autocmd FileType cpp inoremap <C-l> <C-\><C-N>:!g++ "%:p" -o "%:p".out && "%:p".out <Enter>
autocmd FileType javascript nnoremap <C-l> :!node "%:p" <Enter>
autocmd FileType javascript inoremap <C-l> <C-\><C-N>:!node "%:p" <Enter>
autocmd FileType python nnoremap <C-l> :!python "%:p" <Enter>
autocmd FileType python inoremap <C-l> <C-\><C-N>:!python "%:p" <Enter>
autocmd FileType rust nnoremap <C-l> :!cargo run <Enter>
autocmd FileType rust inoremap <C-l> <C-\><C-N>:!cargo run <Enter>
autocmd FileType sh nnoremap <C-l> :!"%:p" <Enter>
autocmd FileType sh inoremap <C-l> <C-\><C-N>:!"%:p" <Enter>
autocmd FileType bash nnoremap <C-l> :!"%:p" <Enter>
autocmd FileType bash inoremap <C-l> <C-\><C-N>:!"%:p" <Enter>

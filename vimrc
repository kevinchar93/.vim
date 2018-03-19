
" Remap keys to use for tab management
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" Make tab size 4
set tabstop=4

" Turn on line numbers by default
set number

" Setup proper highlighing colors
set hlsearch
hi Search ctermbg=LightYellow
hi Search ctermfg=Red
set autowrite

" use vim plug to install vim-go binaries
call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
call plug#end()

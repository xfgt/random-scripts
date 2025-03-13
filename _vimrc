"	Copy and paste
"	you need to use the '+ register'

vnoremap <C-c> "+y
#map <C-v> "+p
map <C-v> "+P  
"paste beforehand


"  For Unix
"vnoremap <C-c> "+y :let @+=@*<CR>

"  For Windows
cd $USERPROFILE\Desktop
set belloff=all

" editor style
set number

" set cursorline
set guifont=Consolas:h12
set nowrap

" filetypes and syntax
syntax on
filetype on
set noswapfile
set nobackup
set noundofile

" tab size
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4

"BackupSwap
"set backupdir=~/.vim/backup//
"set directory=~/.vim/swap//
"set undodir=~/.vim/undo//
"set nobackup
"set noswapfile

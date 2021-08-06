call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'jnurmine/Zenburn'
Plug 'kien/ctrlp.vim'
Plug 'Raimondi/delimitMate'
Plug 'mattn/emmet-vim'
call plug#end()

set noic
set hls is
syntax on
set number

set expandtab
set shiftwidth=2
set tabstop=2

augroup filetypedetect
  au! BufRead,BufNewFile *.h setfiletype c
  au! BufRead,BufNewFile *.x setfiletype asm
  au! BufRead,BufNewFile *.s setfiletype asm
  au! BufRead,BufNewFile *.asm setfiletype asm_ca65
  au! BufRead,BufNewFile *.inc setfiletype asm_ca65
augroup END

autocmd FileType c set noexpandtab tabstop=8 shiftwidth=8
autocmd FileType h set noexpandtab tabstop=8 shiftwidth=8
autocmd FileType asm set noexpandtab tabstop=8 shiftwidth=8
autocmd FileType asm_ca65 set noexpandtab tabstop=8 shiftwidth=8
autocmd FileType make set noexpandtab tabstop=8 shiftwidth=8
autocmd FileType python set tabstop=4 shiftwidth=4
autocmd FileType rust set tabstop=4 shiftwidth=4

let g:ctrlp_custom_ignore = {
  \ 'dir' : '\v[\/](\.(git|svn|hg)|node_modules)$',
  \ }

set backupdir^=~/.vim/backups
colors zenburn

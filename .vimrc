set nocompatible                " be iMproved
syntax on
"color scheme
set background=dark
colorscheme molokai
set cursorline

set completeopt=longest

set number
set ruler
set shiftwidth=4
set softtabstop=4
set tabstop=4
set backspace=indent,eol,start

"man in vim
source $VIMRUNTIME/ftplugin/man.vim
nnoremap <C-M> :Man 3 <cword><CR>

"let ycm, syntastic
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_confirm_extra_conf = 0

let mapleader=";"
nnoremap <leader>d :YcmShowDetailedDiagnostic<CR>
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> 
nnoremap <leader>jdc :YcmCompleter GoToDeclaration<CR>

let g:syntastic_always_populate_loc_list = 1
let g:ycm_min_num_of_chars_for_completion = 1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

nnoremap <leader>j :lnext<CR>
nnoremap <leader>k :lprev<CR>

let &termencoding=&encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,gb18030,gb2312,utf-16,big5

filetype off                    " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


" let Vundle manage Vundle
Bundle 'gmarik/vundle'

"my Bundle here:
"
" original repos on github
Bundle 'kien/ctrlp.vim'
Bundle 'sukima/xmledit'
Bundle 'sjl/gundo.vim'
Bundle 'jiangmiao/auto-pairs'
Bundle 'klen/python-mode'
Bundle 'Valloric/ListToggle'
Bundle 'SirVer/ultisnips'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
" Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdcommenter'
Bundle 'davidhalter/jedi'
"..................................
" vim-scripts repos
Bundle 'YankRing.vim'
Bundle 'vcscommand.vim'
Bundle 'ShowPairs'
Bundle 'SudoEdit.vim'
Bundle 'EasyGrep'
Bundle 'VOoM'
Bundle 'VimIM'
"..................................
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
"......................................
filetype plugin indent on


nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>


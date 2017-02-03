set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-surround' "capabilities for surrounding text with things

Plugin 'kien/ctrlp.vim' "Easily search for other files

Plugin 'tomtom/tcomment_vim' "comment like a badass

Plugin 'rking/ag.vim' "Search directory for stuff

Plugin 'tpope/vim-repeat'

Plugin 'tpope/vim-fugitive'

Plugin 'terryma/vim-multiple-cursors'

Plugin 'flazz/vim-colorschemes'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required

set rnu "Relative line numbering

filetype plugin indent on
syn on se title
set omnifunc=syntaxcomplete#Complete
set laststatus=2
colorscheme antares
let g:airline_powerline_fonts = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Disable scrollbars
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

if has("gui_running")
    colorscheme lightning
endif


set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab
set softtabstop=4
let g:multi_cursor_prev_key='<C-b>'

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

"Plugin 'Valloric/YouCompleteMe'
"Checks syntax, but it's too strict right now
"Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on
syn on se title
set omnifunc=syntaxcomplete#Complete
set laststatus=2
colorscheme antares
let g:airline_powerline_fonts = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_cpp_no_include_search = 1
let g:syntastic_cpp_remove_include_errors =1
let g:syntastic_c_no_include_search = 1
let g:syntastic_c_remove_include_errors =1
let g:syntastic_cpp_gcc_args = "-std=c++11"
let g:syntastic_html_tidy_exec = 'tidy'
let g:syntastic_html_tidy_args = '-config /home/khinterlong/School/webtech/tidy_config'
let g:syntastic_php_checkers = ['phpmd']
let g:syntastic_cpp_check_header = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Disable scrollbars (real hackers don't use scrollbars for navigation!)
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

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'ctrlp.vim'
Plugin 'bufexplorer.zip'
Plugin 'EasyMotion'
Plugin 'tagbar'
Plugin 'mhinz/vim-signify'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"---------------------------------------------------------------

color desert
set gfn=Monospace\ 11
set tabstop=4
set shiftwidth=4
set laststatus=2
set number
set relativenumber
set incsearch
set sidescroll=8
set nowrap
set cursorline "highlight current line
set hlsearch
set hidden "Change buffer despite modified buffer
set exrc "use additional local .vimrc file
set mouse=a

let mapleader=" "

let g:signify_vcs_list = [ 'svn', 'git' ]

" <Space>-n Relative numbering ein/aus
nnoremap <Leader>n :call NumberToggle()<cr>
" <Space>-t Nerdtree ein/aus
nnoremap <Leader>t :NERDTreeToggle<cr>
" <Space>-b BufExplorer
nnoremap <Leader>e :BufExplorer<cr>
" <Space>-c Tagbar
nnoremap <Leader>c :TagbarOpenAutoClose<cr>

" <Space>-w, b, f, F: Easymotion Word jumps, find jumps
"let g:EasyMotion_leader_key = '<Leader>'

" relative numbering on/off
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

" relative numbering automatisch im Command Modus
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber


" Tipps und Tricks

" case insensitive search:
"     /\challo      \c macht ganzen String insensitive 
"     oder :set ignorecase (ic)

" howto remap CAPS (keycode 66) to CTRL (keycode 37):
" xmodmap -e "clear lock"
" for CAPS as Control key:
" xmodmap -e "keycode 66 = Control_L"
" xmodmap -e "add Control = Control_L Control_R"
" for CAPS as Escape key:
" xmodmap -e "keycode 66 = Escape"


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
Plugin 'vim-airline/vim-airline'
Plugin 'junegunn/vim-easy-align'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"---------------------------------------------------------------

"color desert
color moriarty
"set gfn=Monospace\ 10
set gfn=Droid\ Sans\ Mono\ 10
set tabstop=4
set shiftwidth=4
set expandtab
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

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

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

:command MD2html :!pandoc -s % -o %:r.html

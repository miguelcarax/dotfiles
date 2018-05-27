set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'pearofducks/ansible-vim'
"Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sheerun/vim-polyglot'
Plugin 'airblade/vim-gitgutter'
Plugin 'godlygeek/tabular'
"Plugin 'pearofducks/ansible-vim'
Plugin 'rakr/vim-one'
Plugin 'scrooloose/nerdtree'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'scrooloose/nerdcommenter'

" Terraform autocomplete
Plugin 'hashivim/vim-terraform'
Plugin 'vim-syntastic/syntastic'

Plugin 'edkolev/tmuxline.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

execute pathogen#infect()
syntax on

filetype plugin indent on    " required
set number

"On pressing tab, insert 2 spaces
set expandtab
" " show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" " when indenting with '>', use 2 spaces width
set shiftwidth=2

" Ignorecase
set ignorecase

" vim-terraform
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_remap_spacebar=1

" grubox
"colorscheme gruvbox
"set background=dark    " Setting dark mode"

colorscheme one

" Airline
let g:airline_powerline_fonts = 1 
let g:airline_theme='one'
"let g:airline_theme='one'

" Que no se cambie el color de la barra de tmux cuando abras vim
let g:airline#extensions#tmuxline#enabled = 0

" Configuration terraform autocomplete

" Syntastic Config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Ansible-vim
let g:ansible_unindent_after_newline = 1

" vim-one airline theme
"set background=light " for the light version"

" NERD Tree
map <C-n> :NERDTreeToggle<CR>

" Highlight NERD Tree
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

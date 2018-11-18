set nocompatible
filetype plugin indent on
colorscheme zellner
set t_Co=256
" Display whitespace at end-of-line
  highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
  autocmd ColorScheme * highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
  match ExtraWhitespace /\s\+$/
  autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
  autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
  autocmd InsertLeave * match ExtraWhitespace /\s\+$/
  autocmd BufWinLeave * call clearmatches()
syntax enable
set number
set laststatus=2
filetype indent on
set hlsearch
set incsearch
set ignorecase
set ruler
set autoindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab
set nosmarttab
set autoread
set foldmethod=syntax
set nofoldenable
set lazyredraw
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro  " No continuation of comments

command W w !sudo tee % > /dev/null

set splitbelow
set splitright

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

set autoindent
set guifont=Monospace\ 9
set ruler
set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.
set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location
set laststatus=2                  " Show the status line all the time

" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P
set list listchars=tab:\ \ ,trail:·
" Google Go stuff"
set rtp+=~/Code/hg/go/misc/vim
" Vim-less"
set rtp+=~/Code/git/vim-less
filetype plugin indent on
syntax on


colorscheme molokai
autocmd VimEnter * NERDTree

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

let g:clang_user_options='-isysroot /Developer/SDKs/MacOSX10.7.sdk -mmacosx-version-min=10.7'

set nocompatible

filetype plugin indent on

" General Look & Feel
set number
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set scrolloff=5
:set cursorline 
set hidden " keep buffers in memory though hidden
set background=dark
set dir=/tmp//
"let g:gruvbox_italic=1 " NOT WORKING..  works outside tmux but not inside...
colorscheme gruvbox

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase
set completeopt=longest,menuone "change omnicomplete behavior

" Folding
set foldmethod=syntax
set nofoldenable " don't fold on file open
set foldnestmax=2

command Wsudo w !sudo tee %

" Highlight trailing whitespace
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufRead,InsertLeave * match ExtraWhitespace /\s\+$/
" Set up highlight group & retain through colorscheme changes
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
map <silent> <LocalLeader>ws :highlight clear ExtraWhitespace<CR>

" statusline
set laststatus=2
set statusline=
set statusline+=%<\                       " cut at start
set statusline+=%2*[%n%H%M%R%W]%*\        " buffer number, and flags
set statusline+=%-40f\                    " relative path
set statusline+=%=                        " seperate between right- and left-aligned
set statusline+=%1*%y%*%*\                " file type
set statusline+=%10(L(%l/%L)%)\           " line
set statusline+=%2(C(%v/125)%)\           " column
set statusline+=%P                        " percentage of file

map <silent> <LocalLeader>nt :NERDTreeToggle<CR>
map <silent> <LocalLeader>nf :NERDTreeFind<CR>

map <silent> <LocalLeader>gr :GoRun<CR>
map <silent> <LocalLeader>gb :GoBuild<CR>
map <silent> <LocalLeader>gi :GoImports<CR>
map <silent> <LocalLeader>gt :GoTest<CR>
map <silent> <LocalLeader>gf :GoTestFunc<CR>
autocmd filetype qf wincmd J " open quickfix window spanning entire width of pane instead of bot-right

map <silent> <LocalLeader>ff :CtrlP<CR>
map <silent> <LocalLeader>fb :CtrlPBuffer<CR>


let g:ale_fixers = {
      \   '*': ['remove_trailing_lines', 'trim_whitespace'],
      \   'javascript': ['eslint'],
      \}
let g:ale_linter_aliases = {'vue': ['vue', 'javascript']}
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save = 1

" Other potentially worthwhile things to add:
"
" Ack
" Might want to look at fzf instead of CtrlP for file search
" Used to use https://github.com/jamis/fuzzyfinder_textmate and I liked it
" Some vim-tmux plugin?
" Some rake plugin?
" Spellcheck?

" cheatsheet
" Ctrl-P to search
" gcc to comment a line
" gc+movement to comment a block (or highlight section first)
" GO
" gd - go to def
" K - bring up docs for func

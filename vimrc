"" xnutsive vim configuration 2 (6-2014)
""

"" Basics
"
set nocompatible
syntax on               " highlight syntax
set backspace=2         " backspace in insert mode works like normal editor
filetype plugin on
filetype indent on
set number
set autoread
set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell

set clipboard=unnamed

" recommended for vim-stay
set viewoptions=cursor,folds,slash,unix

let g:netrw_list_hide = '.git, .*\.swp, .DS_Store'

let mapleader = ","
"" Clipboard
"
map <Leader>p "+p
map <Leader>y "+y
nnoremap <Leader>w <C-w>v<C-w>l
nnoremap <leader>8 Orequire'byebug';byebug<esc>
nnoremap <leader>9 Orequire'pry';binding.pry<esc>
nmap <leader>4 :NERDTreeToggle<cr>

set numberwidth=1

"" Tabs
"
nmap <leader>ne :NERDTree<cr>
nmap <c-t> :tabnew<cr>
nmap <leader>t :tabnew<cr>

" let g:ctrlp_map = '<leader>p'
nmap <leader>p :FZF<cr>
" nnoremap <c-> :FZF<cr>
"" Don't use ~, .swp and all that bullshit.
"
set nobackup
set noswapfile
set nowb
set nowrap

"" Search in file.
"  Use incremental (browser-like) search, highlight matches.
"
set hlsearch
set showmatch
set incsearch


"" Use 2 spaces for tabulation.
"
set expandtab
set smarttab

set shiftwidth=2
set tabstop=2

if &shell =~# 'fish$'
  set shell=sh
endif

" Required:
filetype plugin indent on

"" Colorscheme
"
" set background=dark
set background=light
"colorscheme solarized
colorscheme gruvbox

nnoremap <Leader>p :Files<CR>

"" Airline
"
set laststatus=2
let g:airline_powerline_fonts = 1

"" GitGutter
"
highlight clear SignColumn
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=yellow
highlight GitGutterDelete ctermfg=red
highlight GitGutterChangeDelete ctermfg=yellow

"" Rainbow Parenthesis
"
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Neovim support
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

let g:gist_clip_command = 'pbcopy'

" vim-rspec setup
map <Leader>rt :call RunCurrentSpecFile()<CR>
map <Leader>rs :call RunNearestSpec()<CR>
map <Leader>rl :call RunLastSpec()<CR>
map <Leader>ra :call RunAllSpecs()<CR>
let g:rspec_command = "!bundle exec rspec {spec}"

" vim-multiple-cursors setup
let g:multi_cursor_exit_from_insert_mode = 0

" vim-hardtime
" let g:hardtime_default_on = 1

" disable arrows
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" fzf from brew + vim
set rtp+=/usr/local/opt/fzf

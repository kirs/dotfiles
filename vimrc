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


"" NeoBundle
"" Make sure all bundle-specific options are declared BELOW

"" Switch back to sh
"  Neobundle doesnt support fish as of 06 2014
"
if &shell =~# 'fish$'
  set shell=sh
endif

if has('vim_starting')
  " Required:
  set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.config/nvim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

"" BUNDLE
""
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-rhubarb'
NeoBundle 'ctrlpvim/ctrlp.vim'
" NeoBundle 'rking/ag.vim' " deprecated
NeoBundle 'mileszs/ack.vim'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'mattn/gist-vim'
" NeoBundle 'mattn/webapi-vim'
" NeoBundle 'tpope/vim-vinegar'
" NeoBundle 'wincent/command-t'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'

" Removes excess spaces
NeoBundle 'vim-scripts/janitor.vim'

" Sets up path for JVM langs (like Clojure)
NeoBundle 'tpope/vim-classpath'


" Snippets
NeoBundle "MarcWeber/vim-addon-mw-utils"
NeoBundle "tomtom/tlib_vim"
NeoBundle "garbas/vim-snipmate"
NeoBundle "honza/vim-snippets"
NeoBundle 'scrooloose/nerdcommenter'

" Langs
NeoBundle 'tpope/vim-rails'
NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'Soares/fish.vim'
NeoBundle 'othree/html5.vim'
"NeoBundle 'pangloss/vim-javascript'
NeoBundle 'othree/yajs.vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'slim-template/vim-slim'
" NeoBundle 'tpope/vim-haml'
NeoBundle 'ap/vim-css-color'
NeoBundle 'vim-scripts/sh.vim'
NeoBundle 'tpope/vim-liquid'
" NeoBundle 'jnwhiteh/vim-golang'
NeoBundle 'fatih/vim-go'
NeoBundle 'tpope/vim-bundler'
" NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'mxw/vim-jsx'

" Clojure
NeoBundle 'guns/vim-clojure-static'
NeoBundle 'kien/rainbow_parentheses.vim'
NeoBundle 'tpope/vim-fireplace'
NeoBundle 'guns/vim-clojure-highlight'

"" Airline
NeoBundle 'bling/vim-airline'
NeoBundle 'airblade/vim-gitgutter'

"" Kir
NeoBundle 'rking/ag.vim'
NeoBundle 'corntrace/bufexplorer'
NeoBundle 'bogado/file-line' " to support $ vi file.rb:12
NeoBundle 'powerman/vim-plugin-ruscmd'
NeoBundle 'morhetz/gruvbox' " theme
NeoBundle 'junegunn/fzf'
NeoBundle 'zhaocai/GoldenView.Vim' "Always have a nice view for vim split windows

" NeoBundle 'kopischke/vim-stay' " Makes vim change current directory
" NeoBundle 'mhinz/vim-startify'
" NeoBundle 'ctrlpvim/ctrlp.vim'

NeoBundle 'takac/vim-hardtime'
NeoBundle 'pbrisbin/vim-mkdir'
NeoBundle 'scrooloose/syntastic'

" NeoBundle 'jaxbot/github-issues.vim' " Makes VIM super slow

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


"" Colorscheme
"
" set background=dark
set background=light
"colorscheme solarized
colorscheme gruvbox

"" CtrlP
"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"" Ack.vim

let g:ackprg = 'rg --vimgrep --smart-case'
cnoreabbrev ag Ack
cnoreabbrev aG Ack
cnoreabbrev Ag Ack
cnoreabbrev AG Ack

nnoremap <Leader>p :CtrlP<CR>

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

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
" if executable('ag')
"   " Use Ag over Grep
"   set grepprg=ag\ --nogroup\ --nocolor

"   " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
"   let g:ctrlp_user_command = 'ag -Q -l --nocolor --hidden -g "" %s'

"   " ag is fast enough that CtrlP doesn't need to cache
"   " let g:ctrlp_use_caching = 0
" endif

" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files . -co --exclude-standard']
" let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}

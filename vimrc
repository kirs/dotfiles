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

set clipboard=unnamed

let g:netrw_list_hide = '.git, .*\.swp, .DS_Store'

let mapleader = ","
"" Clipboard
"
nnoremap <Leader>w <C-w>v<C-w>l
nnoremap <leader>8 Orequire'debugger';debugger<esc>
nnoremap <leader>9 Orequire'pry';binding.pry<esc>
nmap <leader>4 :NERDTreeToggle<cr>

set numberwidth=1

"" Tabs
"
" nmap <leader>ne :NERDTree<cr>
" nmap <c-t> :tabnew<cr>
" nmap <leader>t :tabnew<cr>

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
  set runtimepath+=/Users/kir/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/kir/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

"" BUNDLE
""
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
" NeoBundle 'rking/ag.vim' " deprecated
NeoBundle 'mileszs/ack.vim'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'mattn/gist-vim'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'tpope/vim-vinegar'
NeoBundle 'wincent/command-t'
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
NeoBundle 'tpope/vim-haml'
NeoBundle 'ap/vim-css-color'
NeoBundle 'vim-scripts/sh.vim'
NeoBundle 'tpope/vim-liquid'
NeoBundle 'jnwhiteh/vim-golang'
NeoBundle 'tpope/vim-bundler'
NeoBundle 'digitaltoad/vim-jade'

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
NeoBundle 'bogado/file-line'
NeoBundle 'powerman/vim-plugin-ruscmd'
NeoBundle 'morhetz/gruvbox'
" Makes VIM super slow
" NeoBundle 'jaxbot/github-issues.vim'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


"" Colorscheme
"
set background=dark
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

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
  let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

"" NerdTree close hack
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:gist_clip_command = 'pbcopy'

map <Leader>rt :call RunCurrentSpecFile()<CR>
map <Leader>rs :call RunNearestSpec()<CR>
map <Leader>rl :call RunLastSpec()<CR>
map <Leader>ra :call RunAllSpecs()<CR>
let g:rspec_command = "!bundle exec rspec {spec}"

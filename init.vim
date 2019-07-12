set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/kirs/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/kirs/.cache/dein')
  call dein#begin('/Users/kirs/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/kirs/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
  "

  call dein#add('altercation/vim-colors-solarized')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-rhubarb')
  " call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('terryma/vim-multiple-cursors')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-commentary')
  call dein#add('mattn/gist-vim')
  " call dein#add('mattn/webapi-vim')
  " call dein#add('wincent/command-t')
  call dein#add('scrooloose/nerdtree')
  call dein#add('Xuyuanp/nerdtree-git-plugin')

  " Removes excess spaces
  call dein#add('vim-scripts/janitor.vim')

  " Snippets
  call dein#add("MarcWeber/vim-addon-mw-utils")
  call dein#add("tomtom/tlib_vim")
  " call dein#add("garbas/vim-snipmate")
  " call dein#add("honza/vim-snippets")
  call dein#add('scrooloose/nerdcommenter')

  " Langs
  call dein#add('tpope/vim-rails')
  call dein#add('thoughtbot/vim-rspec')
  call dein#add('vim-ruby/vim-ruby')
  call dein#add('ap/vim-css-color')
  call dein#add('vim-scripts/sh.vim')
  call dein#add('tpope/vim-liquid')
  " call dein#add('Soares/fish.vim')
  " call dein#add('othree/html5.vim')
  " call dein#add('pangloss/vim-javascript'
  " call dein#add('othree/yajs.vim')
  " call dein#add('jnwhiteh/vim-golang')
  " call dein#add('digitaltoad/vim-jade')
  call dein#add('fatih/vim-go')
  call dein#add('tpope/vim-bundler')
  call dein#add('mxw/vim-jsx')

  " Clojure

  call dein#add('tpope/vim-classpath')
  call dein#add('guns/vim-clojure-static')
  call dein#add('kien/rainbow_parentheses.vim')
  call dein#add('tpope/vim-fireplace')
  call dein#add('guns/vim-clojure-highlight')

  "" Airline
  call dein#add('bling/vim-airline')
  call dein#add('airblade/vim-gitgutter')

  "" Kir
  call dein#add('rking/ag.vim')
  call dein#add('corntrace/bufexplorer')
  call dein#add('bogado/file-line') " to support $ vi file.rb:12
  call dein#add('powerman/vim-plugin-ruscmd')
  call dein#add('morhetz/gruvbox') " theme
  " call dein#add('junegunn/fzf')
  call dein#add('junegunn/fzf.vim')
  call dein#add('zhaocai/GoldenView.Vim') "Always have a nice view for vim split windows

  " call dein#add('kopischke/vim-stay') " Makes vim change current directory
  call dein#add('mhinz/vim-startify')
  " call dein#add('ctrlpvim/ctrlp.vim')

  call dein#add('takac/vim-hardtime')
  call dein#add('pbrisbin/vim-mkdir')
  call dein#add('scrooloose/syntastic')

  "call dein#add('jaxbot/github-issues.vim' " Makes VIM super slow

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
source ~/.vimrc


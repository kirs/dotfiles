# golang magic
#
export GOPATH="$HOME/Projects/go"

export PATH="$GOPATH/bin:$PATH"
export PATH="./node_modules/.bin:$PATH"

# Shopify specific
export PRY=1
export FZF_DEFAULT_COMMAND='
  (git ls-tree -r --name-only HEAD ||
   find . -path "*/\.*" -prune -o -type f -print -o -type l -print |
      sed s/^..//) 2> /dev/null'

export ATOM_REPOS_HOME="$HOME/Projects/atom"

export PATH="$HOME/.bin:$PATH"
export NO_BETTER_ERRORS=1
export EDITOR='/usr/local/bin/nvim'
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export RUBYGEMS_GEMDEPS=true

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

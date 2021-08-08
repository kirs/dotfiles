# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

alias g='git'
alias gcm='git checkout master'
alias gp='git push'
alias gst='git status'

# ripgrep is faster than The Silver Searcher but I'm used to type ag
alias ag='rg'

# thx @sirupsen!
alias gbc="git rev-parse --abbrev-ref HEAD"

if [ $SPIN ]; then
  # Prompt
  autoload -Uz vcs_info
  precmd_functions+=( vcs_info )
  setopt prompt_subst

  zstyle ':vcs_info:git:*' check-for-changes true
  zstyle ':vcs_info:*' unstagedstr '*'
  zstyle ':vcs_info:*' stagedstr '+'
  zstyle ':vcs_info:git:*' formats '%F{200}[%b%u%c]%f'
  zstyle ':vcs_info:*' enable git

  PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%~%b $vcs_info_msg_0_ $ '

  if ! command -v rg &> /dev/null; then
    sudo apt-get install -y ripgrep
  fi

  if ! command -v nvim &> /dev/null; then
    sudo apt-get install -y neovim
  fi

  first-push() { git push --set-upstream origin $(gbc) }
else
  # Do not share comand history between tabs
  setopt nosharehistory

  # zsh overrides rm
  # unalias rm

  alias vi='nvim'
  alias vim='nvim'

  # Shopify things
  [ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh
  if [ -e /Users/kir/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/kir/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

  source ~/.zshenv

  first-push() { git push --set-upstream origin $(gbc); dev open pr }

  # truffleruby
  # function jt { ruby /Users/kir/src/github.com/oracle/truffleruby/tool/jt.rb "$@"; }
fi

if [[ $(uname -p) == 'arm' ]]; then
  # kir's personal M1
  source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
  source /opt/homebrew/opt/chruby/share/chruby/auto.sh

  # The next line updates PATH for the Google Cloud SDK.
  if [ -f '/opt/google-cloud-sdk/path.zsh.inc' ]; then . '/opt/google-cloud-sdk/path.zsh.inc'; fi

  # The next line enables shell command completion for gcloud.
  if [ -f '/opt/google-cloud-sdk/completion.zsh.inc' ]; then . '/opt/google-cloud-sdk/completion.zsh.inc'; fi

fi

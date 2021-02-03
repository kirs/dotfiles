#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

[ -d /usr/local/Caskroom/google-cloud-sdk ] && source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
[ -d /usr/local/Caskroom/google-cloud-sdk ] && source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

export PATH="$HOME/bin:$PATH"
export PATH="$HOME/src/bin:$PATH"

export EDITOR=/usr/local/bin/nvim
# export DISABLE_SPRING=1
export GOPATH=$HOME

# https://medium.com/@sidneyliebrand/how-fzf-and-ripgrep-improved-my-workflow-61c7ca212861
export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

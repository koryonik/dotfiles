##
# zsh config based on zgen framework
# https://github.com/tarjoilija/zgen
##

# conf for agnoster theme
DEFAULT_USER=damien

# Load zgen
ZSHZ_PATH=$HOME/.dotfiles/zgen
source ${ZSHZ_PATH}/zgen.zsh

# check if there's no init script
if ! zgen saved; then
  echo "Creating a zgen save"

  # Load robbyrussell's oh-my-zsh's library
  zgen oh-my-zsh

  # Plugins from robbyrussell's oh-my-zsh  
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/command-not-found
  zgen oh-my-zsh plugins/history-substring-search
  #zgen oh-my-zsh plugins/tmux

  if [ "$OSTYPE"="darwin11.0" ]; then
    zgen oh-my-zsh osx
  fi

  # Github plugins
  zgen load rupa/z
  zgen load zsh-users/zsh-syntax-highlighting
  zgen load zsh-users/zsh-completions src

  # Load the theme  
  zgen oh-my-zsh themes/agnoster

  # Tell antigen that you're done
  zgen save
fi

# Load specific machine zshrc configuration
if [ -f ~/.zshrc_local ]; then
    source ~/.zshrc_local
fi
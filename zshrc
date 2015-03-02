##
# zsh config based on zgen framework
# https://github.com/tarjoilija/zgen
##

# conf for agnoster theme
DEFAULT_USER=damien

# Load zgen
DOTFILE_PATH=$HOME/.dotfiles
ZSHZ_PATH=$DOTFILE_PATH/zgen
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
    zgen oh-my-zsh plugins/osx
  fi

  # Github plugins
  zgen load rupa/z
  zgen load zsh-users/zsh-syntax-highlighting
  zgen load zsh-users/zsh-completions src
  zgen load felixr/docker-zsh-completion

  #Local plugins
  #zgen load $DOTFILE_PATH/ zsh

  # Load the theme  
  zgen oh-my-zsh themes/agnoster

  # Tell antigen that you're done
  zgen save
fi

#Local plugins
source $DOTFILE_PATH/zsh/docker.aliases.zsh
source $DOTFILE_PATH/zsh/misc.aliases.zsh

# Load specific machine zshrc configuration
if [ -f ~/.zshrc_local ]; then
    source ~/.zshrc_local
fi
export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=13

ZSH_THEME="robbyrussell"
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="false"
DISABLE_AUTO_TITLE="false"
DISABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="false"
DISABLE_UNTRACKED_FILES_DIRTY="false"
ZSH_CUSTOM=$HOME/.dotfiles/zsh
DEFAULT_USER=`whoami`

if [ -n $TMUX ]; then
    alias vim="TERM=screen-256color vim"
fi

plugins=(
    git
    dotenv
    python
    tmux
    tmuxinator
    virtualenv
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
[ -f "$HOME/.zshrc.local" ] && source ~/.zshrc.local

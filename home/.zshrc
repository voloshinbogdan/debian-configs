# Set path if required
#export PATH=$GOPATH/bin:/usr/local/go/bin:$PATH
export KEYTIMEOUT=1

# Theme config
ZSH_THEME="agnoster-modern"

# Aliases
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias grep='grep --color=auto'
alias ec="$EDITOR $HOME/.zshrc" # edit .zshrc
alias sc="source $HOME/.zshrc"  # reload zsh configuration
alias lg='lazygit'
alias vim='nvim'
alias vi='NVIMLIGHT= nvim'

# Set up the prompt - if you load Theme with zplugin as in this example, this will be overriden by the Theme. If you comment out the Theme in zplugins, this will be loaded.
autoload -Uz promptinit
promptinit
# prompt adam1            # see Zsh Prompt Theme below

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -v

setopt histignorealldups sharehistory

# Keep 5000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE=~/.zsh_history
# Append, not overwrite
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# Quality of history
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST

# zplug - manage plugins
source /usr/share/zplug/init.zsh
zplug "ohmyzsh/ohmyzsh", use:"oh-my-zsh.sh"
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-completions"
zplug "junegunn/fzf"
# zplug "themes/agnoster", from:oh-my-zsh, as:theme   # Theme

# zplug - install/load new plugins when zsh is started or reloaded
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load

# Use modern completion system
autoload -Uz compinit
compinit

# Rust (cargo)
. "$HOME/.cargo/env"

# Homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

plugins=(
    virtualenv
)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# start tmux only for interactive shells
if [[ -z "$TMUX" && -n "$PS1" ]]; then
  exec tmux new-session -A -s main
fi

# Configure agnoster-modern
newline_agnoster() {
  prompt_segment '' 'green' '
\ue0b0'
}
envmodules_agnoster() {
    prompt_segment 'white' 'black' "$(ml -t | sed '1d;:a;N;$!ba;s/\n/|/g')"
}

AGNOSTER_PROMPT_SEGMENTS=("${AGNOSTER_PROMPT_SEGMENTS[@]:0:2}" "envmodules_agnoster" "${AGNOSTER_PROMPT_SEGMENTS[@]:2:5}" "newline_agnoster" "${AGNOSTER_PROMPT_SEGMENTS[@]:5}");\

# Default editor
export EDITOR=nvim

# fzf configs
source <(fzf --zsh)

# zoxide configs
eval "$(zoxide init zsh)"
alias cd='z'
alias cdi='zi'

# Enviroment modules load
source /etc/profile.d/modules.sh
module load qt/6.7.0


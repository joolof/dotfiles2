# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

ZSH_THEME="wedisagree"
# ZSH_THEME="typewritten"
# ZSH_THEME="simple"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  #vi-mode-agnoster
  #history-substring-search 
  git
)

source $ZSH/oh-my-zsh.sh
#autoload -U up-line-or-beginning-search
#autoload -U down-line-or-beginning-search
#zle -N up-line-or-beginning-search
#zle -N down-line-or-beginning-search
#bindkey "^[[A" up-line-or-beginning-search # Up
#bindkey "^[[B" down-line-or-beginning-search # Down
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
bindkey '^[[A' fzf-history-widget

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"





source $HOME/.bash_aliases
# added by Anaconda2 installer
export PATH="$HOME/.local/bin:$HOME/.scripts:$HOME/.cargo/bin:$HOME/.cargo/env:$PATH"

export DDIT_PATH="$HOME/SPHERE/HD61005/Modelling/Dust/"
#export PYTHONPATH=$PYTHONPATH:/home/joo/.ipython/pydrs:/home/joo/.ipython/loci:/home/joo/Codes/Python/Papers:/home/joo/.ipython/phot

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/_NOT_SYNC/MultiNest/lib

# For ESO p2pp
export PATH="$HOME/PROPOSALS/ESO/p2pp-3.4.3/bin:$PATH"
#export JAVA_HOME=/home/joo/Codes/Packages/Java/jre

# For esorex and shit
export CPLDIR=$HOME/Codes/Packages/ESO/pipelines
export PATH="$HOME/gasgano/bin:$HOME/Codes/Packages/ESO/pipelines/bin:$PATH"

# For MCFOST
export MCFOST_UTILS=$HOME/IRS/mcfost/utils

export READER='zathura'

TZ='Europe/Berlin'; 
export TZ
export FZF_DEFAULT_COMMAND='fd --type f'
export LC_TIME=en_US.utf8

VISUAL=nvim; export VISUAL EDITOR=nvim; export EDITOR
#export BROWSER='/usr/bin/google-chrome'
export BROWSER='/usr/bin/firefox'
export TERM='xterm-256color'

# JAVA stuff for reiszing the window
export _JAVA_AWT_WM_NONREPARENTING=1

# For dynamic colors
# https://github.com/sos4nt/dynamic-colors
#export PATH="$HOME/.dynamic-colors/bin:$PATH"
#source $HOME/.dynamic-colors/completions/dynamic-colors.zsh
#dynamic-colors init

# (cat ~/.cache/wal/sequences &)



# case $TERM in
#   rxvt*)
#     precmd () {print -Pn "\e]0;%~\a"}
#     ;;
# esac

## vi mode
#bindkey -v # already defined in the vi-mode plugins
#export KEYTIMEOUT=1

## Use vim keys in tab complete menu:
#bindkey -M menuselect 'h' vi-backward-char
#bindkey -M menuselect 'k' vi-up-line-or-history
#bindkey -M menuselect 'l' vi-forward-char
#bindkey -M menuselect 'j' vi-down-line-or-history
#bindkey -v '^?' backward-delete-char


# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

autoload -Uz compinit
compinit -u

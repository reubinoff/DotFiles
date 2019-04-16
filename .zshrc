# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/reubinoff/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="af-magic"

 ZSH_THEME="robbyrussell"
#
#
#
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker pip)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

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
set -g mouse-resize-pane on



# activate virt_env
alias activate="cd ~/venv/ra/; source ~/venv/ra/bin/activate &>/dev/null ; cd - &> /dev/null"
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

alias open_source="activate; cd ~/source ;vim ."
export DEV_SRC="~/source/sg"
alias open_sg="activate; cd $DEV_SRC ; vim ."
alias open_docker_env="activate; cd /Users/reubinoff/source/sg/devenv/sessions"
alias python=python3
alias ipython="ipython"

alias start_x11_listen='socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\'"'"

# sshfs -p 2020 root@localhost:/tmp/manager ~/ssh_map
alias sshfs_local=sshfs -p 2020 root@localhost:/tmp/manager ~/ssh_map -ovolname=MOSHE
#
# SSH Machine
alias start_ssh_srv='cd /Users/reubinoff/development/docker/continers_hanlder/ssh_srv ; ./up.sh ; docker exec -ti ssh_srv /bin/zsh; cd -'
alias stop_ssh_srv='cd /Users/reubinoff/development/docker/continers_hanlder/ssh_srv ; ./down.sh; cd -'


# sessions devenv
export DEV_ENV="~/docker_data"
alias dev_start="activate ; cd $DEV_SRC/devenv/environments ; tmuxp load ../sessions/4_panes_session_tmux.json -y"
alias def_Start=$dev_start
alias dev_stop="activate ; cd $DEV_SRC/devenv/environments ; docker-compose down; tmux kill-window"
alias dev_shell="activate ; cd $DEV_SRC/devenv/environments ; ./shell.showFiles icsra"
alias dev_clean="rm -rf $DEV_ENV"

alias div_start="cd /Users/reubinoff/development/divorce-life/dev; tmuxp load tmux_sessions.yml -y"

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/reubinoff/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

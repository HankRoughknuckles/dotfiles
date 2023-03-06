# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
DEFAULT_USER="$USER"

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
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.gem/bin:$HOME/.rvm/rubies/ruby-2.1.3/bin:$HOME/.rvm/bin:/opt/local/bin:/opt/local/sbin:/usr/local/heroku/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export GEM_HOME=$HOME/.gem
export GEM_PATH=$HOME/.gem
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# Correct any local problems that may result from using a non-US locale
export LANG=en_US.UTF-8

# Set personal aliases by putting them in ~/.aliases - they are loaded here
source $HOME/.aliases

# Set env vars for android/react-native development
# export ANT_HOME=/usr/local/opt/ant
# export MAVEN_HOME=/usr/local/opt/maven
# export GRADLE_HOME=/usr/local/opt/gradle
export ANDROID_HOME=$HOME/Library/Android/sdk
# export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
# export ANDROID_AVD_HOME=$HOME/.android/avd
# export PATH=$ANT_HOME/bin:$PATH
# export PATH=$MAVEN_HOME/bin:$PATH
# export PATH=$GRADLE_HOME/bin:$PATH
# export PATH=$ANDROID_HOME/tools:$PATH
# export PATH=$ANDROID_HOME/platform-tools:$PATH
# export PATH=$ANDROID_HOME/build-tools/23.0.1:$PATH

# Set editor to edit commands in using <C-x><C-e>
export EDITOR="/opt/homebrew/bin/vim"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
# run rvm on startup
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# NVM config
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# make homebrew work
eval $(/opt/homebrew/bin/brew shellenv)

# add any sensitive env vars
source $HOME/.env

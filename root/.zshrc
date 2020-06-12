# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Add yarn to the PATH
# export PATH=$PATH:$HOME/.yarn/bin

# Path to your oh-my-zsh installation.
export ZSH="/home/paul/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="avit"
ZSH_THEME="agnoster"
# ZSH_THEME="spaceship"

# PowerLevel9K config
# ZSH_THEME="powerlevel9k/powerlevel9k"
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
# POWERLEVEL9K_DISABLE_RPROMPT=true
# POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
# POWERLEVEL9K=truncate_beginning

DEFAULT_USER=`whoami`

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

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

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
    git
    npm
    yarn
    vscode
    node
    z
)

source $ZSH/oh-my-zsh.sh

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

# Set current node development environment
# export NODE_ENV="development"

# aliases
alias yina="yarn install:all"
alias yincl="yarn install:client"
alias yinsv="yarn install:server"
alias ysta="yarn start:all"
alias ystcl="yarn start:client"
alias ystsv="yarn start:server"
alias ysv="yarn server"
alias ydv="yarn develop"

alias gatd="gatsby develop"
alias gatc="gatsby clean"
alias gatb="gatsby build"
alias gats="gatsby serve"
alias gatcbs="gatsby clean && gatsby build && gatsby serve"
alias gatbs="gatsby build && gatsby serve"

alias npmina="npm run install:all"
alias npmincl="npm run install:client"
alias npminsv="npm run install:server"
alias npmstcl="npm run start:client"
alias npmstsv="npm run start:server"
alias npmsv="npm run server"

# Git configuration
# Add all, commit and push
function gitcommit() {
    git add -A
    git commit -m "$1"
}
alias gac=gitcommit

# Add all, commit and push
function gitcommitpush() {
    git add -A
    git commit -m "$1"
    git push origin $(git_current_branch)
}
alias gacp=gitcommitpush

# Add new remote and push
function gitnewremotepush() {
    git remote set-url origin $1
    git push --set-upstream origin $(git_current_branch)
}
alias gnrp=gitnewremotepush
# e.g. gnrp url

# Add remote and push
function gitremotepush() {
    git remote add origin $1
    git push --set-upstream origin $(git_current_branch)
}
alias grp=gitremotepush
# e.g. grp url

# Delete branch both locally and on remote
function gitdeletebranch() {
    git branch -d $1
    git push origin --delete $1
}
alias gdb=gitdeletebranch
# e.g. gdb branch

# Delete branch both locally and on remote
function gitmergetomaster() {
    git checkout $1
    git pull origin $1
    git checkout master
    git merge $1
    git push origin master
    git checkout $1
}
alias gmm=gitmergetomaster
# e.g. gmm branch

function gitcheckoutbranchpush() {
    git checkout -b $1
    git push --set-upstream origin $(git_current_branch)
}
alias gcbp=gitcheckoutbranchpush
# e.g. gcbp branch

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

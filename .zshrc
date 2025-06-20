# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# system alias
alias sdnow="sudo shutdown -h now"
alias rdnow="sudo shutdown -r now"
alias edz="vi ~/.zshrc"
alias srz="source ~/.zshrc"
alias eall="mac eject-all"
alias tmsbp="tmutil startbackup"
alias jall="idea;webstorm;datagrip"
alias dul="diskutil list"
alias spnow="pmset displaysleepnow"

# 자바 
## 메모리 설정 최적화
export JAVA_OPTS="-Xmx8g -Xms4g"

# chrome favorites
#alias infl="open -a \"Google Chrome\" https://www.inflearn.com"
alias chrome="open -a \"Google Chrome\" https://www.youtube.com"
alias yt="open -a \"Google Chrome\" https://www.youtube.com"
alias apple="open -a \"Google Chrome\" https://www.apple.com/kr/"
alias ghb="open -a \"Google Chrome\" https://github.com/JuJin1324\?tab=repositories"
alias iptime="open -a \"Google Chrome\" http://192.168.0.1"
alias afree="open -a \"Google Chrome\" https://www.afreecatv.com"

# safari favorites
alias infl="open -a \"Safari\" https://www.inflearn.com"
alias safari="open -a \"Safari\" https://www.youtube.com"
#alias yt="open -a \"Safari\" https://www.youtube.com"
#alias apple="open -a \"Safari\" https://www.apple.com/kr/"
#alias ghb="open -a \"Safari\" https://github.com/JuJin1324\?tab=repositories"
#alias iptime="open -a \"Safari\" http://192.168.0.1"
#alias afree="open -a \"Safari\" https://www.afreecatv.com"

# application
alias figma="open -a \"Figma\""
alias kakao="open -a \"KaKaoTalk\""
alias od="open -a \"Docker Desktop\""
alias excel="open -a \"Microsoft Excel\""
alias vscode="open -a \"Visual Studio Code\""
alias edge="open -a \"Microsoft Edge Beta\""

# finder
alias cdtf="cd /Volumes/T5_2TB"
alias cdts="cd /Volumes/T7_2TB"
alias cdwn="cd ~/Downloads"
alias cdev="cd ~/Documents/dev"
alias cdsk="cd ~/Desktop"

# ranger
alias rg="ranger"
alias rgtf="ranger --selectfile=/Volumes/T5_2TB"
alias rgdwn="ranger --selectfile=~/Downloads"
alias rgdsk="ranger --selectfile=~/Desktop"

# docker
alias dp="docker ps"
alias dl="docker logs"

# brew
alias bs="brew services"
alias bl="brew list"
alias bi="brew install"

# git
alias gpl="git pull"
alias gph="git push"

# internal ssh
export MY_MACBOOK_IP=192.168.0.xxx
alias ssh-mac="ssh -i id_rsa username@$MY_MACBOOK_IP"

# bluetooth connect
## Connect to Bluetooth devices (replace with your device MAC addresses)
alias ctbh='blueutil --connect XX:XX:XX:XX:XX:XX'
alias ctap='blueutil --connect XX:XX:XX:XX:XX:XX'
alias btl='system_profiler SPBluetoothDataType'
alias cthk='blueutil --connect XX:XX:XX:XX:XX:XX'

# System Profiler
alias catusb='system_profiler SPUSBDataType > ~/usb.info'
alias catssd='smartctl -a /dev/disk0 > ~/ssd.info'

# move to T5
alias mvtf="find ~/Downloads -type f -name '*.mp4' -exec mv {} /Volumes/T5_2TB/Download_at_Data/SQL/mysql-5.5.21 \;"

eval "$(vfox activate zsh)"

# Added by Windsurf
export PATH="~/.codeium/windsurf/bin:$PATH"

# Google Gemini API Key (set in environment)
# export AI_API_KEY="your_api_key_here"

# ================================
# 터미널 환경 최적화 설정
# ================================

# Modern CLI Tools Aliases
alias ls="eza --icons"
alias ll="eza -l --icons --git"
alias la="eza -la --icons --git" 
alias lt="eza --tree --level=2 --icons"
alias cat="bat --style=auto"

# Development Aliases  
alias mvnci="mvn clean install"
alias sb="./mvnw spring-boot:run"
alias gw="./gradlew"
alias gwbt="./gradlew bootRun"

# Git shortcuts
alias gs="git status"
alias ga="git add" 
alias gc="git commit"
alias gp="git push"
alias gl="git pull"

# Claude Code shortcuts
alias cc="claude"

eval "$(zoxide init zsh)"
eval $(thefuck --alias)

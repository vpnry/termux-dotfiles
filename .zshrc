# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/data/data/com.termux/files/home/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="agnoster"
# ZSH_THEME="random"
ZSH_THEME="fwalch"
# ZSH_THEME="robbyrussell"

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

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment

#export LANG=en_US.UTF-8
#export LC_ALL=en_US.UTF-8  

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


# pnry alias
alias wget='wget -c'
alias e='exit'
alias py='python3'

alias sdh='echo "Starting Apache PHP server - Dhammafts\nUse ee to stop"; apachectl start; termux-open http://127.0.0.1:8927/dhammafts-full/'

alias ssc='echo "Starting Apache PHP server - Codefts\nUse ee to stop"; apachectl start; termux-open http://127.0.0.1:8927/devDocFTS/'

alias scc='echo "Starting Apache PHP server - Corpusfts\nUse ee to stop"; apachectl start; termux-open http://127.0.0.1:8927/corpus_fts/'

alias ee='echo "Stopping Apache PHP server"; apachectl stop; echo "Done";'
#	alias lc='termux-open http://127.0.0.1:8080 && http-server  ~/storage/shared/localhost'
# alias lcp='termux-open http://127.0.0.1:8080 && http-server  ~/storage/shared/localhost/_sharePublish'

alias lm='npm list -g --depth=0'
alias gdd='cd ~/storage/shared/download/'
alias golm='cd /data/data/com.termux/files/usr/lib/node_modules'


alias ppp='cd ~/storage/shared/TEST'
alias transfer='sh ~/.transfer.sh'
alias java='~/.java.sh'
alias wwwh='cd ~/.. ;npx webdav-cli --username p --password p --directory true --autoIndex true;'
alias wwww='npx webdav-cli --username p --password p --directory true --autoIndex true;'

alias jjj='cd ~/storage/shared/myJupyterNoteBook/ && termux-open http://localhost:8888/ && jupyter-notebook'
alias iii='ipython'
alias vv='nvim'

alias uuu='cd ~/ ; ./startubuntu.sh'

alias www='cd ~/; cd .. ;wsgidav --host=0.0.0.0 --port=9999 --root=./ --auth=anonymous'
alias sss='http-server -p 8765 -o'
# Mozilla Deep Speech library


# alias s2t='export LD_LIBRARY_PATH=~/s2t/ && ~/s2t/deepspeech --model ~/s2t/deepspeech-0.9.3-models.tflite --scorer ~/s2t/deepspeech-0.9.3-models.scorer --audio '

# alias cloudflare2='/data/data/com.termux/files/home/.pncloudflared/cloudflared-linux-arm64'

#	alias ngrok='/data/data/com.termux/files/home/.pnngrok/ngrok'

# Fix npm global module not found
export NODE_PATH=/data/data/com.termux/files/usr/lib/node_modules

echo ''
echo 'To update Oh M Z run: omz update'
echo '------ Some alias ------'
echo 'sshd: start ssh sever, passw is .'
echo 'On the other machine: ssh -p 8022 ip-of-android'
echo "logcat -s 'sshd:*' will show sshd log"
echo 'pkill sshd: stop ssh server'
echo 'e: exit'
echo 'py: python3'
echo 'ss: apachectl start (php server:8927)'
echo 'sdh/ssc/scc: apachectl start (php server:8927) - Dhamma/Code/Corpus fts'
# echo 'ee: apachectl stop'
echo 'sss: http-server :8765 and open URL'
# echo 'lc: localhost by http-server (nodejs)'
echo 'lm/golm: list/go to npm modules dirs'
echo 'gdd: go to /storage/shared/download'
# echo 'java: java Hello.java (by ~/.java.sh)'
echo 'transfer: upload to transfer.sh'
# echo 'ppp: go to pnryCODE/TEST code'
echo 'wwww: webdavServer current dir'
echo 'wwwh: webdavServer Termux root dir'
echo 'giit: git add.;git commit -m'
echo 'jjj: jupyter-notebook passw is: p'
echo 'iii: ipython'
echo 'www: webdavServer python-network'
echo 'uuu: run UBUNTU...'
# echo 's2t file.wav: Mozilla deepspeech speech2text'
# echo '(aria2c) download -o <new_name> <url>'
echo 'vv: start nvim'
# echo 'd: run dart'
# echo 'pwrite: git push notes repo'
# echo 'l: clear'
echo '------------------------'

function download() {
    aria2c --continue=true --max-concurrent-downloads=10 --max-overall-download-limit=0 --check-certificate=false "$*"
}

function gitt() {
    git add .
    git commit -m "$*"
    git push
}

function pwrite() {
    cd /storage/emulated/0/pWriting/
    git add .
    git commit -m "Termux backup"
    git push
}

function d() {
  dart format "$*"
  dart --enable-asserts "$*"
}


# go to Test dir
ppp

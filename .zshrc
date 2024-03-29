# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/data/data/com.termux/files/home/.oh-my-zsh"
# export JAVA_HOME=/data/data/com.termux/files/usr/opt/openjdk

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="agnoster"
# ZSH_THEME="random"
# ZSH_THEME="fwalch"
ZSH_THEME="robbyrussell"

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
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# zsh-autosuggestions is also a custom plugin
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
export EDITOR='nvim'

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

alias prettier_js_css='prettier -w --semi=true  --tab-width 2  '

# cls shows permission in number 
# https://stackoverflow.com/questions/1795976/can-the-unix-list-command-ls-output-numerical-chmod-permissions
# alias cls="ls -l | awk   '{k=0;for(i=0;i<=8;i++)k+=((substr(\$1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(\"%0o \",k);print}'"

alias cls='stat -c "%a %n" * '

alias wget='wget -c'
alias e='exit'
alias py='python3'
alias ,php='apachectl start;'

alias sss='echo "Starting Apache PHP server\nUse ee to stop"; apachectl start; termux-open http://127.0.0.1:8927/'

# alias sdh='echo "Starting Apache PHP server - Dhammafts\nUse ee to stop"; apachectl start; termux-open http://127.0.0.1:8927/dhammafts-full/'

# alias ssc='echo "Starting Apache PHP server - Codefts\nUse ee to stop"; apachectl start; termux-open http://127.0.0.1:8927/devDocFTS/'

# alias scc='echo "Starting Apache PHP server - Corpusfts\nUse ee to stop"; apachectl start; termux-open http://127.0.0.1:8927/corpus_fts/'

alias ee='echo "Stopping Apache PHP server"; apachectl stop; echo "Done";'
#	alias lc='termux-open http://127.0.0.1:8080 && http-server  ~/storage/shared/localhost'
# alias lcp='termux-open http://127.0.0.1:8080 && http-server  ~/storage/shared/localhost/_sharePublish'

alias lm='npm list -g --depth=0'
alias gdd='cd ~/storage/shared/download/'
alias golm='cd /data/data/com.termux/files/usr/lib/node_modules'


alias ppp='cd /storage/emulated/0/TEST/'
alias transfer='sh ~/.transfer.sh'
# alias java='~/.java.sh'
alias wwwh='cd ~/.. ;npx webdav-cli --username p --password p --directory true --autoIndex true;'
alias wwww='npx webdav-cli --username p --password p --directory true --autoIndex true;'

alias jjj='cd ~/storage/shared/myJupyterNoteBook/ && termux-open http://localhost:8888/ && jupyter-notebook'
alias iii='ipython'
alias v='nvim'
alias vv='nvim'
alias n='nano'
alias nn='nano'
alias vvv=openClipboardPathNvim
alias rm=rm -rf
# alias uuu='cd ~/ ; ./startubuntu.sh'

alias www='cd ~/; cd .. ;wsgidav --host=0.0.0.0 --port=9999 --root=./ --auth=anonymous'

# use default tem git ssh
alias gitt=gittdpcpnry


# alias sss='http-server -p 8765 -o'
# Mozilla Deep Speech library


# alias s2t='export LD_LIBRARY_PATH=~/s2t/ && ~/s2t/deepspeech --model ~/s2t/deepspeech-0.9.3-models.tflite --scorer ~/s2t/deepspeech-0.9.3-models.scorer --audio '

# alias cloudflare2='/data/data/com.termux/files/home/.pncloudflared/cloudflared-linux-arm64'

#	alias ngrok='/data/data/com.termux/files/home/.pnngrok/ngrok'

# Fix Nodejs npm global module not found
export NODE_PATH=/data/data/com.termux/files/usr/lib/node_modules

function print_my_alias() {

# echo '------ Some alias ------'
echo 'cls: show chmod permission in number'
echo 'prettier_js_css <file>'
echo 'sshd: start ssh sever, passw is .'
echo 'On the other machine: ssh -p 8022 ip-of-android'
echo "logcat -s 'sshd:*' will show sshd log"
echo 'pkill sshd: stop ssh server'
# echo 'py: python3'
# echo 'ss: apachectl start (php server:8927)'
echo 'sss: server apachectl start (php server:8927) - Dhamma/Code/Corpus fts'
# echo 'ee: apachectl stop'
# echo 'sss: http-server :8765 and open URL'
# echo 'lc: localhost by http-server (nodejs)'
echo 'lm/golm: list/go to npm modules dirs'
# echo 'gdd: go to /storage/shared/download'
# # echo 'java: java Hello.java (by ~/.java.sh)'
echo 'transfer: upload to transfer.sh'
# echo 'ppp: go to pnryCODE/TEST code'
echo 'wwww: webdavServer current dir'
echo 'wwwh: webdavServer Termux root dir'
echo 'giit: git add.;git commit -m'
echo 'jjj: jupyter-notebook passw is: p'
echo 'iii: ipython'
echo 'www: webdavServer python-network'
echo 'rplace a b: replace all files under .'

echo 'lsphone: list all files on phone'
echo 'ignoreLargeFile: auto add large files > .gitignore'
# echo 'uuu: run UBUNTU...'
# echo 's2t file.wav: Mozilla deepspeech speech2text'
# echo '(aria2c) download -o <new_name> <url>'
# echo 'vv: start nvim'
# # echo 'd: run dart'
# echo 'pwrite: git push notes repo'
# echo 'l: clear'

echo ",php: apachectl start;"
echo "makecython make cli cython app"
echo 'To update Oh M Z run: omz update'

# https://github.com/Hax4us/TermuxAlpine
echo 'startalpine: Start Alpine startalpine'


echo '---------------------------------------------'

}

function download() {
	aria2c --continue=true --max-concurrent-downloads=10 --max-overall-download-limit=0 --check-certificate=false "$*"

}


function ssh_use_dpcpnry() {
	# Change ssh account
	echo ''
	echo '------- use dpcpnry ssh -------'
	eval "$(ssh-agent -s)"
	ssh-add ~/.ssh/id_ed25519
}


function ssh_use_vpnry() {
	echo ''
	echo '------- use vnry ssh -------'
	eval "$(ssh-agent -s)"
	ssh-add ~/.ssh/id_ed25519_2vp

}


function gittdpcpnry() {
	git add .
	git commit -m "$*"

	echo ''
	echo '---------------'
	echo 'Switching to dpcpnry SSH account'
	ssh_use_dpcpnry

	git push
}


function gittvpnry() {
	git add .
	git commit -m "$*"

	echo ''
	echo '---------------'
	echo ' * Switching to vpnry SSH account'
	ssh_use_vpnry

	git push

	echo ''
	echo '---------------'
	echo ' * Switching to BACK to dpcpnry SSH account'
	ssh_use_dpcpnry
}

function pwrite() {
	cd /storage/emulated/0/pWriting/
	git add .
	git commit -m "Sync:$(date "+%Y%m%d_%H%M%S")"
	git push
}

function ,rplace() {

echo "Replacing files in" $(pwd);
find . -type f -not -path '*/\.*' -exec sed -i -e "s/$1/$2/g" -- {} +

}

function lsphone() {
	# this fnc list all files in the device.
	# The result is for file search

	DDDD=$(date -Idate)
	echo 'Listing..., please wait...'
	find /storage/emulated/0/ -type f > /storage/emulated/0/localhost/resources/phonelist/phone$DDDD.txt

# add <br> before each file path
sed -i -e "s~/storage/emulated/0/~<br><br>/storage/emulated/0/~g" /storage/emulated/0/localhost/resources/phonelist/phone$DDDD.txt

echo "Done listing! \nCheck /storage/emulated/0/localhost/resources/phonelist/phone$DDDD.txt"
echo 'Deleting indexed old sqlite3 in: /storage/emulated/0/localhost/indexed_database/phonelist.sqlite3'
rm -rf /storage/emulated/0/localhost/indexed_database/phonelist.sqlite3
echo "----\n"
echo "Done all"
}

function makecython() {
	# cythonize, make binary file from py code
	echo 'Using cython to make binary cli tool. Pls wait'
	cython $1  --embed -3

	cname=$(echo $1 | sed -e "s/.py//")

	PYTHONLIBVER=python$(python3 -c 'import sys; print(".".join(map(str, sys.version_info[:2])))')$(python3-config --abiflags)

	gcc -Os $(python3-config --includes) $cname.c -o $cname $(python3-config --ldflags) -l$PYTHONLIBVER
	echo "Coping and chmod +x  $cname to /data/data/com.termux/files/usr/bin"

	cp $cname /data/data/com.termux/files/usr/bin

	chmod +x /data/data/com.termux/files/usr/bin/$cname

	echo 'Done!'
}

function resizeIMG() {
	# jpegoptim <percent> <files>
	# jpegoptim 20 *.jpg
	# default is to reduce to 10 percent

	perCent=10
	outDir=_jpegoptim

	if [[ $1 -gt 0 ]]; then
		perCent=$1
	else
		echo reducing to $perCent%
	fi

	echo resizing "${@:2}" to $perCent% quality to $outDir
	mkdir -p $outDir
	jpegoptim --size=$perCent% --overwrite --dest=$outDir "${@:2}"

# instead of using "${@:2}", we also can use shift command
# shift: will consume/remove the first arg
# "$@" : then "$@" will have 2nd arg onwards

}

# termux command
f1l3OrDirP3th=$(termux-clipboard-get);

function openClipboardPathNvim() {

# f1l3OrDirP3th=$(termux-clipboard-get);
# Texmux home dir shortcut in Total commander, I named as Termux => path will begin with ///_Termux/
# This will depend on what you named it

if [[ $f1l3OrDirP3th == ///_Termux* ]]; then
	f1l3OrDir=$(echo $f1l3OrDirP3th | sed -e "s~///_Termux/~$HOME/~")
else 
	f1l3OrDir=$f1l3OrDirP3th
fi 
# open with nvim
if [[ -f "$f1l3OrDir" ]]; then 
	nvim $f1l3OrDir
	# if dir then cd dir
elif [ -d "$f1l3OrDir" ]; then 
	cd $f1l3OrDir
fi 
}


function ignoreLargeFile() {
	# https://stackoverflow.com/questions/4035779/gitignore-by-file-size

	echo "automatically ignoring large files > 99MB"

  # find . -size +55M | sed 's|^\./||g' >> .gitignore
  find . -size +99M -printf '%P\n' >> .gitignore

  # not sure why uniq > .gitignore does not work on my Termux 
  cat .gitignore | sort | uniq >> gitignoree

  mv gitignoree .gitignore

}


# Created by `pipx` on 2022-07-15 17:39:09
export PATH="$PATH:/data/data/com.termux/files/home/.local/bin"

# rust 
export PATH="$PATH:/data/data/com.termux/files/home/.cargo/bin"


# AUTO RUN ON STARTUP
# check clipboard and open in nvim if it is a file path
# if a dir then cd to it 
# Tip: use copy path command on Total Commander Android app, then open Termux shortcut

if [[ $f1l3OrDirP3th == /* ]]; then 
	openClipboardPathNvim
else
	# go to phone TEST dir
	ppp 
	echo 'Use print_my_alias to list aliases'
	echo 'For fixing any repository issues, try: termux-change-repo'
	echo ''
fi 



# LOG ALL COMMANDS
# https://superuser.com/questions/735660/whats-the-zsh-equivalent-of-bashs-prompt-command
# https://spin.atomicobject.com/2016/05/28/log-bash-history/
#
precmd() { 
	# echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history -1)" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log
	echo "$(history -1)" >> ~/.logs/bash_history_$(date "+%Y_%m_%d").log

}


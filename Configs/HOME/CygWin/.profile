export PS1="\[\e[1;30m\][\u@\h \[\e[1;31m\]\w\[\e[1;30m\]]\n\[\e[1;30m\]\`if [ \$? = 0 ]; then echo \[\e[1\;30m\]\\$\[\e[1m\]; else echo \[\e[1\;31m\]\\$\[\e[0m\]; fi\` \[\e[0;0m\]"

alias gvim="/cygdrive/c/Marslo/MyProgram/Vim/vim74/gvim.exe $@"
alias vim="vim -u $HOME/.cygwin/.vimrc"
alias vimdiff="vimdiff -u $HOME/.cygwin/.vimrc"
alias buildvim="make -f Make_cyg.mak IME=yes PYTHON=/cygdrive/c/Marslo/MyProgram/Python27 DYNAMIC_PYTHON=yes PYTHON_VER=27 FEATURES=HUGE"
alias dp='cygpath -d $PWD'

alias up="cd $HOME"
alias gi="cd $HOME/../../Marslo/Tools/Git"
alias desk="cd $HOME/Desktop"
alias msa="cd $HOME/../../Marslo/Job/MSA/git/"

alias gitinfo='source /c/Users/xjiaoli/.gitinfo'
alias exp='explorer.exe .'
alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'

# Dangerous operation needs confirm
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Operation of files and directory
alias cx='chmod u+x'
alias c='clear'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias d='cd -'
alias dc='cd $1'
alias -- +='pushd .'
alias -- -='popd'

# Show colorful
alias grep='grep -i --color=auto'
alias egrep='egrep -i --color=auto'
alias h='history | grep $@'

alias ls='ls -NF --color=always'
alias l='ls -lthrNF --color=always'
alias la='ls -althrNF --color=always'
alias l.='ls -d .* --color=always' 
alias ld='\ls -Nald --color=always */'

alias lvim="vim -c \"normal '0\""
alias lgvim="gvim -c \"normal '0\""

alias c='clear'
alias ff=firefox
alias ud.='du -h --max-depth=1 --exclude='\./\.*''
alias ud='du -h --max-depth=1'
alias df='df -kTh'
alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'
alias shutdown='sudo shutdown -h now'
alias reboot='sudo shutdown -r now'

# Prompt: [USERNAME@HOSTNAME PATH]
export PS1="\[\e[1;30m\][\u@\h \[\e[1;31m\]\w\[\e[1;30m\]]\n\[\e[1;30m\]\`if [ \$? = 0 ]; then echo \[\e[1\;30m\]\\$\[\e[1m\]; else echo \[\e[1\;31m\]\\$\[\e[0m\]; fi\` \[\e[0;0m\]"

# [USERNAME@HOSTNAME PATH]
# $
#   PS1='\[\e[1;30m\][\u@\h \[\e[1;31m\]\w\[\e[1;30m\]]\n\[\e[1;30m\]\$ \[\e[0m\]'
#   PS1="\[\e[1;30m\][\u@\h \[\e[1;31m\]\w\[\e[1;30m\]]\n\[\e[1;30m\]\`if [ \$? = 0 ]; then echo \[\e[1\;32m\]\\$\[\e[1m\]; else echo \[\e[1\;31m\]\\$\[\e[0m\]; fi\` \[\e[0;0m\]"
#   PS1="\[\e[1;34m\]\u@\h \[\e[1;31m\]\w\[\e[1;30m\]\n\[\e[1;30m\]\`if [ \$? = 0 ]; then echo \[\e[1\;32m\]\\$\[\e[1m\]; else echo \[\e[1\;31m\]\\$\[\e[0m\]; fi\` \[\e[0;0m\]"
#
# Promot in Ubuntu
# USERNAME@HOSTNAME TIME PATH $
#   PS1="\[\e[1;32m\]\u\[\e[m\]\[\e[1;33m\]@\[\e[1m\]\[\e[1;31m\]\h\[\e[1m\] \[\e[1;33m\]\t\[\e[m\] \[\e[1;34m\]\W\[\e[m\] \`if [ \$? = 0 ]; then echo \[\e[1\;32m\]\\$\[\e[1m\]; else echo \[\e[1\;31m\]\\$\[\e[0m\]; fi\` \[\e[0;0m\]"
# export PS1="\[\e[0;32m\]\u\[\e[m\] \[\e[0;33m\]\t\[\e[m\] \[\e[0;34m\]\W\[\e[m\] \`if [ \$? = 0 ]; then echo \[\e[0\;32m\]\\$\[\e[1m\]; else echo \[\e[0\;31m\]\\$\[\e[0m\]; fi\` \[\e[0;0m\]"
# export PS1='\[\e[1;30m\][\u@\h \[\e[1;31m\]\w\[\e[1;30m\]]\n\[\e[1;30m\]\$ \[\e[0m\]'

# Color configure in ls
export LS_COLORS='no=00:fi=00:di=01;31:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=01;32:*.cmd=01;32:*.exe=01;32:*.com=01;32:*.btm=01;32:*.bat=01;32:*.sh=01;32:*.csh=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.bz=01;31:*.tz=01;31:*.rpm=01;31:*.cpio=01;31:*.jpg=01;35:*.gif=01;35:*.bmp=01;35:*.xbm=01;35:*.xpm=01;35:*.png=01;35:*.tif=01;35:'

# The color of man page
export LESS_TERMCAP_mb=$(printf "\e[1;31m")         # begin blinding
export LESS_TERMCAP_md=$(printf "\e[1;31m")         # begin bold
export LESS_TERMCAP_me=$(printf "\e[0m")            # end mode
export LESS_TERMCAP_se=$(printf "\e[0m")            # end stadout-mode
export LESS_TERMCAP_so=$(printf "\e[1;44;33m")      # begin stadout-mode - info box
export LESS_TERMCAP_ue=$(printf "\e[0m")            # end underline
export LESS_TERMCAP_us=$(printf "\e[1;32m")         # begin underline

# The setting about history
export HISTCONTROL=erasedups
export HISTCONTROL=ignoredups
export HISTTIMEFORMAT='%F %T '

export LESS="-eirMX"

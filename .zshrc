# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000
setopt appendhistory autocd extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/alex/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source "$HOME/.antigen/antigen.zsh"

antigen bundle git
antigen-use oh-my-zsh
antigen-bundle arialdomartini/oh-my-git
antigen theme arialdomartini/oh-my-git-themes oppa-lana-style
antigen-apply
if [ `uname -s` = "Linux" ]; then
  export JAVA_HOME=/usr/local/jdk/
elif [ `uname -s` = "Darwin" ]; then
  export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/
else
  echo "Unrecognized os - exiting"
  exit 1
fi
export EDITOR=vim
export PATH=/usr/local/sbt/bin/:/usr/local/zinc/bin/:/usr/local/jdk/bin/:/usr/local/scala/bin/:$PATH:$HOME/repos/guake-colors-solarized:$HOME/bin/:/usr/local/idea/bin/:$HOME/repos/init-scripts/bin/
export CAGE=cage433.vm.bytemark.co.uk
export CARY=178.62.56.14
alias cary='ssh $CARY'
alias cage='ssh alex@$CAGE'
alias gs='git status'
alias zinc='zinc -Dzinc.analysis.cache.limit=50'
alias gitp='git --no-pager'
CASE_SENSITIVE=true
export MAKER_SONATYPE_CREDENTIALS=cage433:zoltan
export MAKER_GPG_PASS_PHRASE=smal3Pices
bindkey -v
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^r' history-incremental-search-backward

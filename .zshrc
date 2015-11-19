
[ -e "${DOTFILES}/source/.zalias" ] && source "${DOTFILES}/source/.zalias"
[ -e "~/.zlocal" ] && source "~/.zlocal"

source "${DOTFILES}/antigen/antigen.zsh"

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export EDITOR="vim"
export SHELL="/bin/zsh"
export LANG=en_US.UTF-8

autoload -U colors && colors
setopt promptsubst

##Antigen-------

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle git
antigen bundle pip
antigen bundle node
antigen bundle npm
antigen bundle rake
antigen bundle tmux
antigen bundle vundle
antigen bundle python
antigen bundle gem
antigen bundle zsh-users/zsh-history-substring-search

CURRENT_OS=`uname`
if [[ $CURRENT_OS == 'Darwin' ]]; then
  antigen bundle brew
  antigen bundle osx
elif [[ $CURRENT_OS == 'Linux' ]]; then
  if [[ $DISTRO == 'CentOS' ]]; then
    antigen bundle centos
  fi
fi

#Requires Iconosolata for powerline
antigen theme wesbos/Cobalt2-iterm cobalt2.zsh-theme

#In case above fails with fonts use
#antigen theme robbyrussell

antigen apply

##Antigen-------

function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

# Checks if working tree is dirty
parse_git_dirty() {
  local SUBMODULE_SYNTAX=''
  if [[ $POST_1_7_2_GIT -gt 0 ]]; then
    SUBMODULE_SYNTAX="--ignore-submodules=dirty"
  fi
  if [[ -n $(git status -s ${SUBMODULE_SYNTAX}  2> /dev/null) ]]; then
    echo "$ZSH_THEME_GIT_PROMPT_DIRTY"
  else
   echo "$ZSH_THEME_GIT_PROMPT_CLEAN"
  fi
}


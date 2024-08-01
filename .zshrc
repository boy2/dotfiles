export LSCOLORS=gxfxcxdxbxegedabagacad
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

alias ls="ls -G"
alias gls="gls --color"
alias ll="ls -al"

function git(){hub "$@"}

# nvim
#alias vi="nvim"
#alias vim="nvim"
#alias view="nvim -R"

# github
alias gc='git checkout'
alias gs='git status'
alias gb='git branch'
alias gp='git pull origin master'

git_prompt() {
  if [ "$(git rev-parse --is-inside-work-tree 2> /dev/null)" = true ]; then
	  PROMPT='%*
%F{green}[%~]%f $(git_super_status)%# '
  else
	  PROMPT='%*
%F{green}[%~]%f %# '
	fi
}
precmd() {
	git_prompt
}

[[ -d ~/.rbenv  ]] && \
export PATH=${HOME}/.rbenv/bin:${PATH} && \
eval "$(rbenv init -)"

[[ -d ~/.anyenv  ]] && \
export PATH=${HOME}/.anyenv/bin:${PATH} && \
eval "$(anyenv init -)"

export PYENV_ROOT="$HOME/.anyenv/envs/pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
export PATH="/usr/local/opt/openjdk@11/bin:$PATH"



setopt nomatch

# gitレポジトリの状態を表示する
source "/usr/local/opt/zsh-git-prompt/zshrc.sh"

# 補完機能を有効にする
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit
fi

## 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

## 補完候補を詰めて表示
setopt list_packed

## 補完候補一覧をカラー表示
autoload colors
zstyle ':completion:*' list-colors ''

## コマンドのスペルを訂正
setopt correct
## ?, &, * でエラーにならないようにする
setopt nonomatch

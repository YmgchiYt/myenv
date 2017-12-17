
autoload -U promptinit
promptinit
# prompt
PS1="[loc %2C%(?..(%?%))] "

autoload -Uz compinit && compinit -i
fpath=(/usr/local/share/zsh-completions $fpath)

setopt PROMPT_SUBST
setopt AUTOCD
# history
# !!の置換にenterをはさむ
setopt HIST_VERIFY
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt SHARE_HISTORY

#vim like key bind
bindkey -v

# coreutils
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

# sphinx
# export LC_ALL='ja_JP.UTF-8'

# alias
alias vim=gvim
alias vi=vim
alias makeifr="(LC_ALL='ja_JP.UTF-8' cd /Users/me/go/src/bitbucket.org/YmgchiYt/infra_documents && make html)"
alias awk='gawk'

# less
#-W移動した際のハイライト, -M ファイル名, -S折り返さない, -RASCII解釈, -g検索時の反転を現在行のみに
alias less="less -W -M -R -N -g"

# man PATH
MANPATH=/usr/local/opt/coreutils/libexec/gnuman:${MANPATH}

# git logの文字化け防止
export LESSCHARSET=utf-8

#pyenv
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"

# go
export PATH=${PATH}:/usr/local/go/bin
export GOPATH=${HOME}/go
export PATH="${PATH}:${GOPATH}/bin"


# MacTex
export PATH="${PATH}:/Library/TeX/texbin"

lsof -i4TCP:8888 > /dev/null
if [ $? -ne 0 ]; then
  (cd "/Users/me/go/src/bitbucket.org/YmgchiYt/infra_documents/_build/html/" && python3 -m http.server 8888 > /dev/null 2>&1 &)
fi

# git repository表示
# copy from http://tkengo.github.io/blog/2013/05/12/zsh-vcs-info/
# # この行は現在のパスを表示する設定です。ブランチを表示して色をつける設定とは関係ありません
# RPROMPT="%{${fg[blue]}%}[%~]%{${reset_color}%}"

autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'

# pecoとの連携
function peco-src() {
    local selected_dir=$(ghq list | peco --query "$LBUFFER")
    if [ -n "$selected_dir" ]; then
        BUFFER="cd ${GOPATH}/src/${selected_dir}"
        zle accept-line
    fi
    zle redisplay
}
zle -N peco-src
stty -ixon
bindkey '^s' peco-src

function peco-select-history() {
    BUFFER=$(fc -l -r -n 1 | peco --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle redisplay
}
zle -N peco-select-history
bindkey '^r' peco-select-history

# go build
function linux-go-build() {
    GOOS=linux GOARCH=amd64 go build ${@+"$@"}
}

# tmux
export EDITOR=vi

# exercism
if [ -f ~/.config/exercism/exercism_completion.zsh ]; then
  . ~/.config/exercism/exercism_completion.zsh
fi

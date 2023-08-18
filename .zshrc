alias j='julia'


# zshっぽいやつ

## 後ろに書いても展開される
alias -g G='| grep --color=auto'

## ./hoge.tar.gz で展開できる
alias -s gz='tar -xzvf'

# 安全帯
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# sudoのエイリアス
alias _='sudo'

# ディレクトリ下の表示のエイリアス
alias l='clear && ls'
alias ll='ls -l'
alias ls='ls -aGF'

# 親へのエイリアス
alias ..2='cd ../..'
alias ..3='cd ../../..'

# gitのエイリアス
alias g='git'
alias ga='git add'
alias gd='git diff'
alias gs='git status'
alias gp='git push'
alias gb='git branch'
alias gst='git status'
alias gco='git checkout'
alias gf='git fetch'
alias gc='git commit'

# aptのエイリアス
alias agi='sudo apt install'
alias agr='sudo apt remove'
alias agu='sudo apt update'

# bundleのエイリアス
alias b='bundle'
alias be='bundle exec'
alias bx='bundle exec'
alias bi='bundle install'
alias bo='bundle outdated'
alias bu='bundle update'
alias rc='bundle exec rails c'

# 色を指定
export LSCOLORS=cxfxcxdxbxegedabagacad

# cdなしでも動けるようにする
setopt auto_cd

# cd -で以前のディレクトリを表示
setopt auto_pushd

# 日本語対応
setopt print_eight_bit

# gitのブランチの状況を表示する
setopt PROMPT_SUBST

# プロンプトの設定
source ~/.zsh/.git-prompt.sh
PROMPT='%F{cyan}%W%f %F{cyan}%*%f:%F{yellow}%m%f:%F{magenta}%n%f: %F{green}%~%f %F{red}$(__git_ps1 "%s" )%f '

# スペルミス時に候補を表示する、nvimって打ったらvimか？って聞いてきたので消した
# setopt correct

# 履歴系の設定
HISTFILE=~/.zsh_history
export SAVEHIST=10000
setopt hist_reduce_blanks
export HISTSIZE=1000
setopt share_history

# ↓いざなんかあってログとか追うときに混乱しそうなのでコメントアウト
# setopt hist_ignore_all_dups

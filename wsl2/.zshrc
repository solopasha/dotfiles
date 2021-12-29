# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

export GPG_TTY=$(tty)
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.local/bin:$PATH
export PATH=$PATH:$(go env GOPATH)/bin
export GOPATH=$(go env GOPATH)
# Path to your oh-my-zsh installation.
export ZSH="/home/solopasha-veslo/.oh-my-zsh"

export EDITOR="code --wait"
export VISUAL="$EDITOR"

# export BAT_THEME="DarkNeon"
# fzf
export FZF_DEFAULT_COMMAND="fdfind --type file --color=always --follow --hidden --exclude .git"
export FZF_CTRL_T_COMMAND="fdfind --type directory --type file --color=always --follow --hidden --exclude .git"
#export FZF_DEFAULT_OPTS="--height 50% --layout=reverse --border=rounded --preview 'file {}' --preview-window down:1 --ansi"
export FZF_COMPLETION_TRIGGER="~~"
export FZF_DEFAULT_OPTS="
--layout=reverse
--border=rounded
--info=inline
--height=80%
--multi
--preview-window=:hidden
--preview '([[ -f {} ]] && (batcat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200'
--color='hl:148,hl+:154,pointer:032,marker:010,bg+:237,gutter:008'
--prompt='∼ ' --pointer='▶' --marker='✓'
--bind '?:toggle-preview'
--bind 'ctrl-a:select-all'
--ansi
"

# source <(kubectl completion zsh)
# ZSH_THEME=powerlevel10k/powerlevel10k
# ZSH_THEME="spaceship"
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"
ZSH_ALIAS_FINDER_AUTOMATIC=true
# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to enable command auto-correction.
 # ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"


plugins=(git gitignore docker docker-compose helm colored-man-pages command-not-found zsh-autosuggestions fast-syntax-highlighting \
        ubuntu zsh-bash-completions-fallback z sudo fzf alias-finder copydir terraform genpass cp extract)

# ZSH_AUTOSUGGEST_STRATEGY=(history completion)
source $ZSH/oh-my-zsh.sh


[[ -f ~/.alias_zsh ]] && . ~/.alias_zsh
[[ -f ~/.pr_env ]] && . ~/.pr_env


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
complete -o nospace -C /usr/bin/vault vault
# source /usr/share/bash-completion/completions/az
eval "$(starship init zsh)"

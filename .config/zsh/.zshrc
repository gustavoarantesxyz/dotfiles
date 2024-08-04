# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# History in cache directory:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE="${XDG_CACHE_HOME}/zsh/history"

# Aliases
[ -f "${XDG_CONFIG_HOME}/zsh/aliasrc" ] && source "${XDG_CONFIG_HOME}/zsh/aliasrc"

# Options
unsetopt menu_complete
unsetopt flowcontrol

setopt prompt_subst
setopt always_to_end
setopt append_history
setopt auto_menu
setopt complete_in_word
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history

# Tab complete
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Enable vi mode
bindkey -v

# Use vim keys in tab complete menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

bindkey '^R' history-incremental-search-backward

bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char
bindkey  "^[[2~"  ''
bindkey  "^[[5~"  ''
bindkey  "^[[6~"  ''

# Plugins
source "${XDG_CONFIG_HOME}/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "${XDG_CONFIG_HOME}/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "${XDG_CONFIG_HOME}/zsh/powerlevel10k/powerlevel10k.zsh-theme"

ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f "${XDG_CONFIG_HOME}/zsh/.p10k.zsh" ]] || source "${XDG_CONFIG_HOME}/zsh/.p10k.zsh"

#!/usr/bin/env zsh

if [ -f "$HOME/.profile" ]; then
  source $HOME/.profile
fi

# https://github.com/zsh-users/antigen#installation
source $HOME/bin/antigen.zsh

antigen use oh-my-zsh

antigen bundle Aloxaf/fzf-tab
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting

# https://github.com/jackharrisonsherlock/common/
antigen theme jackharrisonsherlock/common

antigen apply

common_current_dir() {
  echo -n "%{$fg[$COMMON_COLORS_CURRENT_DIR]%}%~ "
}

COMMON_PROMPT_SYMBOL="λ"
COMMON_COLORS_RETURN_STATUS_TRUE=green
COMMON_COLORS_RETURN_STATUS_FALSE=magenta
NEWLINE=$'\n'
PROMPT='${NEWLINE}$(common_host)$(common_current_dir)$(common_bg_jobs)$(common_git_status)${NEWLINE}$(common_return_status)'
RPROMPT=''

path+=(~/bin)
path+=(~/.nix-profile/bin)
path+=(~/.local/bin)
path+=(~/.cabal/bin)
path+=(~/.ghcup/bin)
path+=(~/.cargo/bin)
export PATH


if [ -e /home/waynee95/.nix-profile/etc/profile.d/nix.sh ]; then
  source /home/waynee95/.nix-profile/etc/profile.d/nix.sh;
fi # added by Nix installer

if [[ -z "$TMUX" ]]; then
  tmux attach ^/dev/null || tmux
fi


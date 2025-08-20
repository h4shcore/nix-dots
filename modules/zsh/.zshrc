# zsh-history 
HISTFILE=~/.zsh_history
export HISTFILESIZE=10000000 # history limit of the file on disk
export HISTSIZE=10000000 # current session's history limit, also following this https://unix.stackexchange.com/a/595475 $HISTSIZE should be at least 20% bigger than $SAVEHIST 
export SAVEHIST=500000 # zsh saves this many lines from the in-memory history list to the history file upon shell exit
setopt INC_APPEND_HISTORY # history file is updated immediately after a command is entered
setopt SHARE_HISTORY # allows multiple Zsh sessions to share the same command history 
setopt EXTENDED_HISTORY # records the time when each command was executed along with the command itself
setopt APPENDHISTORY # ensures that each command entered in the current session is appended to the history file immediately after execution
export HISTTIMEFORMAT="%d/%m/%Y %H:%M] "

export EDITOR=nvim

# Example aliases
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias hyprconfig="nvim ~/.config/hypr/hyprland.conf"
alias nf="neofetch"
alias ff="fastfetch"
alias nv="nvim"
alias c="clear"
alias q="exit"
alias sd="shutdown now"
alias re="reboot"
alias r="yazi"
alias st="df -h"
alias clock="tty-clock -C3 -D"
alias hack="cmatrix"
alias v="cava"
alias ac="ani-cli"
# alias usb="udisksctl mount --block-device /dev/sda1" # for my personal external hdd connection
# alias um="udisksctl unmount -b /dev/sda1" # unmount external drive
alias usb="sudo mount /dev/sda1 /run/media/daksh"
alias um="sudo umount /dev/sda1 /run/media/daksh"
alias hx="helix"
alias zz="zellij"
alias battery="bat /sys/class/power_supply/BAT1/capacity"

# eza ls 
alias eza="eza --icons"
alias ls="eza"
alias l="ls -l"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la --header"
alias lt="ls --tree"

# cd back
alias ..="cd .."

# nixos
# alias nsw="sudo nixos-rebuild switch --flake /etc/nixos#default"
# alias nst="sudo nixos-rebuild test --flake /etc/nixos#default"
# alias ncg="sudo nix-collect-garbage -d"

# custom scripts
export PATH="$HOME/.local/bin:$PATH"

# spicetify
export PATH=$PATH:/home/daksh/.spicetify

# emacs
export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH="$HOME/.config/emacs/bin:$PATH"

# zoxide
eval "$(zoxide init zsh)"

# starship 
eval "$(starship init zsh)"

# bun completions
[ -s "/home/daksh/.bun/_bun" ] && source "/home/daksh/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# direnv
eval "$(direnv hook zsh)"

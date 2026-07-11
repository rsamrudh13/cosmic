if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g fish_greeting
    fastfetch
end

starship init fish | source
zoxide init fish | source

alias e="exit"
alias c="clear"
alias ls="lsd"
alias p="rmpc"
alias syu="sudo pacman -Syu"

abbr s sudo pacman -S
abbr r sudo pacman -R
abbr ys yay -S
abbr yr yay -R

bind ctrl-l accept-autosuggestion
bind ctrl-h backward-word-end

bind ctrl-j history-search-forward
bind ctrl-k history-search-backward

bind 'ctrl-;' end-of-line

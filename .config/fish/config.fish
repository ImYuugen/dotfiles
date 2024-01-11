if status --is-login
  if test (tty) = /dev/tty1
    Hyprland
  end
end

fish_add_path /home/yuugen/.cargo/bin

set -gx EDITOR (which nvim)
set -gx VISUAL $EDITOR
set -gx SUDO_EDITOR $EDITOR

set fish_greeting
set fish_emoji_width 2

alias doasedit 'sudoedit'

alias nixamer 'shutdown now' # ¯\_(ツ)_/¯

#Pacman
abbr pacs 'doas pacman -S'
abbr pacr 'doas pacman -R'

# Files
abbr l 'ls -la'
alias ls 'exa --color=always --icons --group-directories-first'

# Vim
abbr vim nvim
abbr vi nvim
abbr sv 'doas nvim'

# Git
abbr gst 'git status'
abbr gc 'git commit'
abbr gcs 'git commit -s'
abbr gcsm 'git commit -s -m'
abbr gcm 'git commit -m'
abbr gpl 'git pull'
abbr gps 'git push'
abbr gls 'git ls-files'
abbr glog 'git log --oneline --graph'
abbr gtma 'git tag -ma'
abbr grpst 'git rev-parse --show-toplevel'
abbr gtree 'ls -T --git-ignore -l --git'

alias dotfiles 'git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

starship init fish | source

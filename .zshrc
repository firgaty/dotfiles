
#export TERM="xterm-256colors"

export ALL="en_GB.UTF-8"
export LANG="en_GB.UTF-8"
export LANGUAGE="en_GB.UTF-8"
export LC_ADDRESS="POSIX"
export LC_COLLATE="POSIX"
export LC_CTYPE="en_GB.utf8"
export LC_IDENTIFICATION="en_GB.UTF-8"
export LC_MEASUREMENT="fr_FR.UTF-8"
export LC_MESSAGE="POSIX"
export LC_MONETARY="fr_FR.UTF-8"
export LC_NAME="POSIX"
export LC_NUMERIC="en_GB.UTF-8"
export LC_PAPER"=fr_FR.UTF-8"
export LC_TELEPHONE="fr_FR.UTF-8"
export LC_TIME="fr_FR.UTF-8"


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/firgaty/.zshrc'

autoload -Uz compinit
compinit

source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
#antigen theme bureauu

antigen bundle mafredri/zsh-async
#antigen bundle sindresorhus/pure

export BROWSER='google-chrome-stable'
export POWERLINE_CONFIG_COMMAND=/usr/bin/powerline-config
export DEFAULT_USER=firgaty

POWERLEVEL9K_MODE='awesome-patched'
antigen theme bhilburn/powerlevel9k powerlevel9k




# Tell Antigen that you're done.
antigen apply
# End of lines added by compinstall



# Aliases
alias 'pacman'='sudo pacman'
alias 'pacU'='sudo pacman -Syyu'
alias 'pacS'='sudo pacman -S'
alias cd..='cd ..'
alias snano='sudo nano'
alias 'makepkg-all'='makepkg -sri PKGBUILD'
alias 'rm -r'='rm -rf'
alias start-plasma='startx ~/.xinitrc kde'
alias start-i3='startx ~/.xinitrc i3'
alias powertop='sudo powertop'

PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"

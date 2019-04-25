# https://unix.stackexchange.com/questions/93476/gnome-terminal-keep-track-of-directory-in-new-tab/93477#93477
source /etc/profile.d/vte.sh

# https://wiki.archlinux.org/index.php/Neovim#Replacing_vi_and_vim_with_neovim
export EDITOR=nvim
export VISUAL=nvim

# https://github.com/bhilburn/powerlevel9k/wiki/Show-Off-Your-Config#p9kgt
BASE16_SHELL_SET_BACKGROUND=false
# https://github.com/chriskempson/base16-shell#bashzsh
BASE16_SHELL="$HOME/Documents/pkg/base16-shell"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

# https://github.com/bhilburn/powerlevel9k/wiki/Show-Off-Your-Config#p9kgt
source $HOME/.p9kgt

# https://github.com/desyncr/auto-ls#customization
auto-ls-exa () {
  exa -a --group-directories-first
}
# https://github.com/desyncr/auto-ls#configuration
AUTO_LS_COMMANDS=(exa)
AUTO_LS_NEWLINE=false
AUTO_LS_CHPWD=false

# https://github.com/zsh-users/antigen/wiki/Quick-start#load-antigen-in-your-current-shell
source $HOME/Documents/pkg/antigen/antigen.zsh
# https://github.com/zsh-users/antigen/wiki/Commands#antigen-init
antigen init $HOME/.antigenrc

# https://wiki.archlinux.org/index.php/fzf#zsh
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
# https://github.com/junegunn/fzf#layout
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
# https://github.com/junegunn/fzf#respecting-gitignore
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# alias
alias ls='exa --group-directories-first'
alias l='exa --group-directories-first'
alias la='exa -a --group-directories-first'
alias ll='exa -l --group-directories-first'
alias lla='exa -al --group-directories-first'
alias lal='exa -al --group-directories-first'
alias lt='exa -T --group-directories-first'
alias lta='exa -aT --group-directories-first'
alias lat='exa -aT --group-directories-first'
alias f='fd -H'
alias c='bat -p'
alias e=nvim
alias se='sudo nvim'
alias v='nvim -M'
alias d='nvim -d'
alias g='grep -i --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
alias p='ps -eF'
alias pg='ps=$(ps -eF); head -1 <<< "$ps"; grep -v "grep -v" <<< "$ps" | grep -i --color=auto'
alias lc='locate -i'
alias ulc='sudo updatedb && locate -i'
alias df='df -h'
alias du='du -ch'
alias free='free -h'
alias dmesg='dmesg -HL'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -Iv'
alias ln='ln -iv'
alias md='mkdir -pv'
alias rd='rmdir -v'
alias _=sudo
alias __='sudo $(fc -ln -1)'
alias :q=exit


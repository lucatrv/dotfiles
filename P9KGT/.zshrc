# https://unix.stackexchange.com/questions/93476/gnome-terminal-keep-track-of-directory-in-new-tab/93477#93477
source /etc/profile.d/vte.sh

# https://wiki.archlinux.org/index.php/Neovim#Replacing_vi_and_vim_with_neovim
export EDITOR=nvim
export VISUAL=nvim

# https://github.com/chriskempson/base16-shell#bashzsh
BASE16_SHELL_SET_BACKGROUND=false
BASE16_SHELL="$HOME/Documents/pkg/base16-shell"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

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


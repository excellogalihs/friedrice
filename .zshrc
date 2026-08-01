export EDITOR="nvim"

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source <(fzf --zsh)

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

alias update='sudo pacman -Syu'
alias updateyay='yay -Syu'
alias search='nvim $(fzf --preview="bat --color=always {}")'
alias cd='z'
alias ls='eza --tree --icons --level=1'

install() {
    yay -Slq | fzf -m --preview 'yay -Si {}' | xargs -ro yay -S
}
fastfetch

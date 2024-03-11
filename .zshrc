# Enble Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/agustin-murray/.zshrc'

autoload -Uz compinit
compinit
neofetch
# End of lines added by compinstall
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

alias cdc="cd /home/agustin-murray/facultad/CSO"
alias cdt="cd /home/agustin-murray/facultad/TDL"

bindkey -v
export KEYTIMEOUT=1

alias l="ls -1"
alias la="ls -a -1"

#c alias:
god() {
    if [[ -z "$1" ]]; then
        echo "Usage: god <source_file.c>"
    else
        source_file="$1"
        executable_name="${source_file%.c}"
        gcc -o "$executable_name" "$source_file" && "./$executable_name"
        rm -f "$executable_name"
    fi
}



shh() {
    wifimon
    sudo aireplay-ng -0 0 -a 6C:BA:B8:E8:DF:68 -c F4:F5:D8:1A:FD:1A wlan0mon
}

redvecino() {
    wifimon
    sudo airodump-ng --band a -c 1 --bssid 6C:BA:B8:E8:DF:68 wlan0mon
}

wifimon() {
    sudo airmon-ng start wlan0
}

wifirec() {
    sudo airmon-ng stop wlan0mon
}


source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme

eval "$(zoxide init --cmd cd zsh)"

export PATH=/home/agustin-murray/.cargo/bin:$PATH

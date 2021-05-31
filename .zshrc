# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

########## Custom Fetch By uFetch ################################

## DEFINE COLORS

if [ -x "$(command -v tput)" ]; then
	bold="$(tput bold)"
	black="$(tput setaf 0)"
	red="$(tput setaf 1)"
	green="$(tput setaf 2)"
	yellow="$(tput setaf 3)"
	blue="$(tput setaf 4)"
	magenta="$(tput setaf 5)"
	cyan="$(tput setaf 6)"
	white="$(tput setaf 7)"
	reset="$(tput sgr0)"
fi

# you can change these
lc="${reset}${bold}${green}"        # labels
nc="${reset}${bold}${green}"        # user and hostname
ic="${reset}"                       # info
c0="${reset}${green}"               # first color

c0="${reset}${bold}${green}"
c1="${reset}${bold}${red}"
c2="${reset}${bold}${yellow}"
c3="${reset}${bold}${cyan}"
c4="${reset}${bold}${magenta}"

## OUTPUT

cat <<EOF

${c0}  ________ ${c1}      ${c2}       ${c3}        ${c4} _       ${reset} 
${c0} |  ______|${c1}      ${c2}       ${c3}        ${c4}| |      ${reset} 
${c0} | |____   ${c1} _ __ ${c2}  ___  ${c3}  ___   ${c4}| | _    ${reset} 
${c0} |  ____|  ${c1}| '__|${c2} / _ \ ${c3} / _ \  ${c4}| |/ /   ${reset} 
${c0} | |       ${c1}| |   ${c2}|  __| ${c3}| | | | ${c4}|   /    ${reset} 
${c0} | |       ${c1}| |   ${c2}| (__  ${c3}| |_| | ${c4}|   \    ${reset} 
${c0} |_|       ${c1}|_|   ${c2} \___\ ${c3} \__,_| ${c4}|_|\_\   ${reset} 

EOF

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/freak/dev/Applications/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/freak/dev/Applications/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/freak/dev/Applications/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/freak/dev/Applications/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

conda deactivate

# Use Powerlevel10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /home/freak/dev/Scripts/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


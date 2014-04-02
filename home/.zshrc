# The following lines were added by compinstall
path=($path ~/.bin /usr/local/bin /opt/scala/bin ~/bin ~/opt/bin/)

zstyle :compinstall filename '/home/name/.zshrc'

autoload -Uz compinit
compinit

# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_hist
HISTSIZE=1000
SAVEHIST=3000
bindkey -e
# End of lines configured by zsh-newuser-install
. ~/.profile # Load ~/.profile loading .aliases and .functions

# Enable colours
autoload colors
colors
autoload -Uz vcs_info

zstyle ':vcs_info:*:prompt:*' formats "$VCSPROMPT" "%F{green}[%b]%f"

precmd() {
	vcs_info 'prompt'

	if [ -n vcs_info_msg_0_ ]; then
		RPROMPT="${vcs_info_msg_1_}"
	else
		RPROMPT=""
	fi
}


#PROMPT="${fg[default]}[ ${fg[cyan]}%3c ${fg[default]}] %# "
#RPROMPT="%(?..${fg[red]}%B%?%b )"
PROMPT="%(?..%? )[ %3c ] %# "
#RPROMPT="%(?..%?)"	
autoload zmv
alias mmv='noglob zmv -W'

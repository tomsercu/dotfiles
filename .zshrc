source /etc/profile

# (Tom 2020-05-04) From here: all 
#<oh-my-zsh> 
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git virtualenv fzf-zsh-plugin)

source $ZSH/oh-my-zsh.sh
#</oh-my-zsh> (Tom 2020-05-04)


# Bringing back from .zshrc.pre-oh-my-zsh as I go along
# Tom 2020-04-22 trying to get basic setup:
source $HOME/.profile # local bin paths
[ -f $HOME/.profile.cluster ] && source $HOME/.profile.cluster
# Machine-specific eg conda activation
[ -f $HOME/.profile.local ] && source $HOME/.profile.local

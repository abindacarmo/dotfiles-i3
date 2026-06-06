# >>> Basic Zsh Configuration <<<

# Path setup
export PATH="$HOME/.local/bin:$PATH"

# Set default editor
export EDITOR="nano"

# Enable command auto-correction
setopt CORRECT

# Enable auto-completion
autoload -Uz compinit
compinit

# Enable command history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS
setopt SHARE_HISTORY

# Prompt setup (simple)


# Aliases
alias ll='ls -lah --color=auto'
alias la='ls -A'
alias l='ls -CF'
alias update='sudo apt update && sudo apt upgrade -y'
alias cls='clear'

# Nice colors for ls and grep
export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"


eval "$(starship init zsh)"
alias code='/usr/bin/code'
export PATH="$HOME/anaconda3/bin:$PATH"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export PATH="$PATH:/home/abinda/.nvm/versions/node/v20.20.2/bin"


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin

ZSH_THEME="robbyrussel"

eval "$(starship init zsh)"

fastfetch -l NetHydra

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=~/.npm-global/bin:$PATH
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#888888"
export GEMINI_API_KEY="Gemini API Key"
export GEMINI_API_KEY="AIzaSyB1lwd_KTfRJcID3GRrGDwVokf-AZ9ah0w"

# opencode
export PATH=/home/abinda/.opencode/bin:$PATH
alias logout='i3-msg exit'
alias logout='i3-msg exit'

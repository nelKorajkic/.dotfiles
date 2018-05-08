source ~/.aliases.sh
source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh
antigen bundle mafredri/zsh-async
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle jump
antigen bundle ssh-agent

antigen bundle sindresorhus/pure
antigen theme terminalparty

antigen apply

alias t="TERM=st-256color tmux -2"    

# bind -r '\C-s'
 stty -ixon

 function chpwd() {
  emulate -L zsh
  ls 
 }


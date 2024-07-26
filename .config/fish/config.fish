if status is-interactive
    starship init fish | source
    enable_transience
    set -g fish_greeting
end

function starship_transient_prompt_func
  starship module character
end

function starship_transient_rprompt_func
  starship module time
end

# List Directory
alias ls="lsd"
alias l="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias ll="ls -lah"
alias lt="ls --tree"

# Handy change dir shortcuts
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'

# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
abbr mkdir 'mkdir -p'

# yadm
alias yl='lazygit --use-config-file "$HOME/.config/yadm/lazygit.yml,$HOME/.config/lazygit/config.yml" --work-tree ~ --git-dir ~/.local/share/yadm/repo.git'
set -x SSH_AUTH_SOCK /run/user/1000/ssh-agent.socket

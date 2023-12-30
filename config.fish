if status is-interactive
    fish_vi_key_bindings
    bind -M insert -m default jk backward-char force-repaint
    set -g EDITOR "nvim"

    # Ports
    fish_add_path -m "/opt/local/bin"
    fish_add_path -m "/opt/local/sbin"

    alias ll='ls -l'
    alias vi='vim'
    alias vim='nvim'
    alias vimrc='nvim ~/.config/nvim/init.lua'
    alias vimplug='nvim ~/.config/nvim/lua/joao/plugins.lua'
    alias shrc='nvim ~/.config/fish/config.fish; . ~/.config/fish/config.fish'

    # Rust
    set -U fish_user_paths $HOME/.cargo/bin $fish_user_paths

    # Node 
    set --universal nvm_default_version v18.17.0

    # Python
    set -g PYENV_ROOT "$HOME/.pyenv"
    fish_add_path "$PYENV_ROOT/bin"
    pyenv init - | source
    fish_add_path -m /Users/joao/.local/bin
end

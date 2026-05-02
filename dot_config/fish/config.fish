# Disable fish greeting message
set -U fish_greeting

# Load Oh My Posh configuration
oh-my-posh init fish --config ~/.config/OhMyPosh/rexudud.json | source

# Aliases
alias ff="fastfetch"
alias yayq="yay -Qs"
alias yayr="yay -Rns"
alias yays="yay -Scc"

# Load fastfetch on start
ff

function chwpd_handler --on-variable PWD
  ls
end

# Bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH "$BUN_INSTALL/bin:$PATH"

# Set up fzf key bindings and fuzzy completion
fzf --fish | source

# zoxide
export _ZO_DOCTOR='0'
export _ZO_ECHO='0'
export _ZO_RESOLVE_SYMLINKS='1'
zoxide init fish | source

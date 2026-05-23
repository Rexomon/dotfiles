# Disable fish greeting message
set -U fish_greeting

# Set specific GPU for Zed
set --export ZED_DEVICE_ID 1347

# Load Oh My Posh configuration
oh-my-posh init fish --config ~/.config/OhMyPosh/rexudud.json | source

# Aliases
alias ff="fastfetch"
alias yayq="yay -Qs"
alias yayr="yay -Rns"
alias yays="yay -Scc"
alias ls="eza --icons --color=always --icons=always"

# Load fastfetch on start
if status is-interactive
  ff
end

# List directory contents when changing directories
function chwpd_handler --on-variable PWD
  ls
end

# Bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH "$BUN_INSTALL/bin:$PATH"

# Set up fzf key bindings and fuzzy completion
fzf --fish | source

set --export FZF_DEFAULT_COMMAND "fd --hidden --strip-cwd-prefix --exclude .git"
set --export FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"
set --export FZF_ALT_C_COMMAND "fd --type=d --hidden --strip-cwd-prefix --exclude .git"

set --export FZF_DEFAULT_OPTS "--height 50% --layout=default --border"
set --export FZF_CTRL_T_OPTS "--preview 'bat --color=always -n --line-range :500 {}'"
set --export FZF_ALT_C_OPTS "--preview 'ls --tree --color=always {} | head -n 200'"

# zoxide
export _ZO_DOCTOR='0'
export _ZO_ECHO='0'
export _ZO_RESOLVE_SYMLINKS='1'
zoxide init fish | source

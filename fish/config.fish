if status is-interactive
    # Commands to run in interactive sessions can go here
end

if not set -q SSH_AGENT_PID
    eval (ssh-agent -c)
    ssh-add ~/.ssh/github
end

# Aliases
alias di "sudo dnf install"
alias dr "sudo dnf remove"

alias bi "bun install"
alias br "bun run"
alias c "clear"
alias ui "cd ~/projects/ui"

# Vpn
alias pge "sudo openvpn --config ~/apps/vpn/georgia-aes-256-cbc-udp-dns.ovpn --auth-user-pass ~/apps/vpn/pass.txt"

# Project specific
alias ui "cd ~/projects/ui"



# fish_ssh_agent
# ssh-add ~/.ssh/github

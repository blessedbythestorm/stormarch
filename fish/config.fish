if status is-interactive
    # Commands to run in interactive sessions can go here

    set fish_greeting

    alias ls='eza --icons=always --color=always'

    zoxide init --cmd cd fish | source
    starship init fish | source
end

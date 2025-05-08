function nf
    set file (fzf --preview 'bat --style=numbers --color=always {} | head -100')
    if test -n "$file"
        nvim "$file"
    end
end


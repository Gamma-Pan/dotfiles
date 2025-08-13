function cd --wraps=cd --description 'cd plus prompt to activate nearest .venv (default yes)'
    # Run the real cd
    builtin cd $argv

    # If cd failed, stop
    if test $status -ne 0
        return
    end

    # Search upward for .venv folder
    set dir (pwd)
    while test "$dir" != "/"
        if test -d "$dir/.venv"
            echo "Found virtual environment at $dir/.venv"
            read -l -P "Activate it? [Y/n] " response
            if test -z "$response" -o (string lower "$response") = "y"
                source "$dir/.venv/bin/activate.fish"
            end
            return
        end
        set dir (dirname "$dir")
    end

    # No .venv found — deactivate if one is active
    if set -q VIRTUAL_ENV
        echo "Deactivating virtual environment"
        deactivate
    end
end

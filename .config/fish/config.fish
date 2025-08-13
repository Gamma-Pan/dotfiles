if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_cursor_default block blink
    set fish_cursor_insert line
end

abbr -a x 'exit'
abbr -a c 'clear'

abbr -a ls 'lsd'
abbr -a ll 'lsd -l'
abbr -a lt 'lsd --tree'

function conf -d "Go to config directory"
	cd /home/pan/.config/$argv[1]
end

function qfind -d "Quick case invariant search in current dir"
	find . -type f -exec grep -i -l $argv[1] {} \;
end

source $HOME/.config/fish/secrets.fish

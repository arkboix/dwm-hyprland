# Set up color variables
autoload -U colors && colors

# Run only for interactive shells
if [[ $- =~ i ]]; then
    # Ensure pokemon-colorscripts runs only once
    if [[ -z "$_POKEMON_COLORSCRIPTS" ]]; then
        export _POKEMON_COLORSCRIPTS=true
        pokemon-colorscripts -r --no-title
    fi

    # Ensure the echo statement runs only once
    if [[ -z "$_ZSH_ECHO_DISPLAYED" ]]; then
        export _ZSH_ECHO_DISPLAYED=true
        echo "You are using /bin/zsh as your shell."
    fi
fi

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh


# Customize the prompt with everything inside brackets and white brackets
PS1='%F{white}[%F{cyan}%D{%I:%M %p}%F{green} %n@%m %F{yellow}%~%F{white}]%f '


source /usr/share/cachyos-fish-config/cachyos-config.fish

if status is-interactive
    # Commands to run in interactive sessions can go here
end
# source /home/tduckie/External/Libraries/miniconda3/etc/fish/conf.d/conda.fish

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/tduckie/External/Libraries/miniconda3/bin/conda
    eval /home/tduckie/External/Libraries/miniconda3/bin/conda "shell.fish" hook $argv | source
else
    if test -f "/home/tduckie/External/Libraries/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/tduckie/External/Libraries/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH /home/tduckie/External/Libraries/miniconda3/bin $PATH
    end
end
# <<< conda initialize <<<

# >>> distrobox prompt >>>
# function fish_prompt
#     set last_status $status
#
#     # Check if we are inside a distrobox (using the standard env var)
#     if set -q CONTAINER_ID
#         # Customize the prompt for within the container
#         echo -n "📦[" (whoami) "@" $CONTAINER_ID "] " (prompt_pwd) "> "
#     else
#         # Use the default prompt for the host
#         # You can replace this with your preferred host prompt
#         echo -n (whoami) "@" (hostname) " " (prompt_pwd) "> "
#     end
#
#     # Restore the last command's exit status
#     return $last_status
# end
# <<< distrobox prompt >>

fish_add_path /home/tduckie/.spicetify

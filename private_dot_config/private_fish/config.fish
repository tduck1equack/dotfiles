if status is-interactive
    # Commands to run in interactive sessions can go here
end

source /home/tduckie/External/Libraries/miniconda3/etc/fish/conf.d/conda.fish

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/tduckie/External/Libraries/miniconda3/bin/conda
    eval /home/tduckie/External/Libraries/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/tduckie/External/Libraries/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/tduckie/External/Libraries/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/tduckie/External/Libraries/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<


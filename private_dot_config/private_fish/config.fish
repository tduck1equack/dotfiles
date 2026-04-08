source /usr/share/cachyos-fish-config/cachyos-config.fish

if status is-interactive
    # Commands to run in interactive sessions can go here
    #
    # Adding SSH keys on system to keychain
    keychain --eval --quiet ~/External/.ssh/id_ed25519_20260316_github | source
    keychain --eval --quiet ~/External/.ssh/id_ed25519_20260316_gitlab | source
end
# source /home/tduckie/External/Libraries/miniconda3/etc/fish/conf.d/conda.fish
set -gx ANDROID_HOME /home/tduckie/External/Libraries/Android/Sdk
set -gx GOPATH /home/tduckie/External/Libraries/go

direnv hook fish | source

# pnpm
set -gx PNPM_HOME "/home/tduckie/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

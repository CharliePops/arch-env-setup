# if username and email are set, config git and ssh
if [ -n "$USERNAME" ] && [ -n "$EMAIL" ]; then
    git config --global user.name "$USERNAME"
    git config --global user.email "$EMAIL"

    git config --global init.defaultBranch main
    git config --global core.editor "nvim"

    # Create ssh keys for github if they don't exist
    if [ ! -f "$HOME/.ssh/id_ed25519" ]; then
        echo "Creating SSH keys for GitHub..."
        ssh-keygen -t ed25519 -C "$EMAIL" -f "$HOME/.ssh/id_ed25519" -N ""
        eval "$(ssh-agent -s)"
        ssh-add "$HOME/.ssh/id_ed25519"
    fi
fi


show_separator

# Make bash the default shell
echo "Making bash the default shell..."
chsh -s /bin/bash
echo "Bash is now the default shell!"

show_separator
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

show_separator

# Make bash the default shell
echo "Making bash the default shell..."
chsh -s /bin/bash
echo "Bash is now the default shell!"

show_separator

# Copy tmux.conf
echo "Copying tmux.conf..."
cp tmux.conf "$HOME/.tmux.conf"
echo "Tmux.conf copied successfully!"

show_separator

# Copy .bashrc to home
echo "Copying bashrc..."
cp .bashrc "$HOME/.bashrc"
echo "Bashrc copied successfully!"

show_separator

# Copy alacritty config
echo "Copying Alacritty config..."
cp .alacritty.toml "$HOME/.alacritty.toml"
echo "Alacritty config copied successfully!"

show_separator

# copy functions.sh to home
echo "Copying functions.sh..."
cp functions.sh "$HOME/functions.sh"
echo "functions.sh copied successfully!"

show_separator

source "$HOME/.bashrc"
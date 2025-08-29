git config --global user.name "$USERNAME"
git config --global user.email "$EMAIL"

git config --global init.defaultBranch main
git config --global core.editor "nvim"

# Make bash the default shell
echo "Making bash the default shell..."
chsh -s /bin/bash
echo "Bash is now the default shell!"

# Copy tmux.conf
echo "Copying tmux.conf..."
cp tmux.conf "$HOME/.tmux.conf"
echo "Tmux.conf copied successfully!"

# Add .bashrc contents to 
echo "Adding .bashrc content..."
cat .bashrc >> "$HOME/.bashrc"
echo "Bashrc content added successfully!"
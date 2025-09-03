# Copy tmux.conf
echo "Copying tmux.conf..."
cp ./dotfiles/tmux.conf "$HOME/.tmux.conf"
echo "Tmux.conf copied successfully!"

show_separator

# Copy .bashrc to home
echo "Copying bashrc..."
cp ./dotfiles/.bashrc "$HOME/.bashrc"
echo "Bashrc copied successfully!"

show_separator

# Copy alacritty config
echo "Copying Alacritty config..."
cp ./dotfiles/.alacritty.toml "$HOME/.alacritty.toml"
echo "Alacritty config copied successfully!"

show_separator

# copy functions.sh to home
echo "Copying functions.sh..."
cp ./dotfiles/functions.sh "$HOME/functions.sh"
echo "functions.sh copied successfully!"

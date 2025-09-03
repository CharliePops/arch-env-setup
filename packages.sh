sudo pacman -S --noconfirm --needed \
    alacritty \
    base-devel \
    bash-completion \
    btop \
    chromium \
    docker \
    docker-buildx \
    docker-compose \
    eza \
    fzf \
    neovim \
    tmux \
    ufw \
    yay

show_separator

yay -S --noconfirm --needed \
    cursor-bin \
    visual-studio-code-bin \
    nvm

show_separator

# Install VSCode extensions
code --install-extension dbaeumer.vscode-eslint 
code --install-extension esbenp.prettier-vscode 
code --install-extension eamodio.gitlens

# Install lazyvim
if [[ ! -d "$HOME/.config/nvim" ]]; then
  git clone https://github.com/LazyVim/starter ~/.config/nvim
  rm -rf ~/.config/nvim/.git
fi

sudo pacman -S --noconfirm --needed \
    alacritty \
    base-devel \
    bash-completion \
    btop \
    chromium \
    eza \
    fzf \
    neovim \
    tmux \
    ufw \
    yay

show_separator

yay -S --noconfirm --needed \
    cursor-bin \
    visual-studio-code-bin

show_separator

# Install VSCode extensions
code --install-extension dbaeumer.vscode-eslint 
code --install-extension esbenp.prettier-vscode 
code --install-extension eamodio.gitlens

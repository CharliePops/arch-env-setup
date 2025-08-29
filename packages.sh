sudo pacman -S --noconfirm --needed \
    base-devel \
    yay \
    neovim \
    tmux \
    bash-completion \
    btop \
    fzf \
    ufw 

yay -S --noconfirm --needed \
    cursor-bin \
    visual-studio-code-bin

# Install VSCode extensions
code --install-extension dbaeumer.vscode-eslint 
code --install-extension esbenp.prettier-vscode 
code --install-extension eamodio.gitlens

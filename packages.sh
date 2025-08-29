sudo pacman -S --noconfirm --needed \
    base-devel \
    yay \
    neovim \
    tmux \
    bash-completion \
    btop \
    fzf \
    ufw \
    rustup \

sudo yay -S --noconfirm --needed \
    cursor-bin \
    visual-studio-code-bin

code --install-extension dbaeumer.vscode-eslint esbenp.prettier-vscode vscodevim.vim

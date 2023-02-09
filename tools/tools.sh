#!/bin/bash
##################################
# Applications
##################################

# Screenshot: flameshot
# Browser: chrome brave
# CPU and GPU monitor: btop nvitop
# Terminal: terminator tmux
# Chat: discord telegram
# File manager: vifm

echo y | LANG=C yay -Sy \
    --noprovides --answerdiff None \
    --answerclean None --mflags "--noconfirm" \
    pyenv \
    graphviz \
    vifm \
    zsh \
    git lazygit \
    jq \
    npm \
    cowsay \
    ripgrep \
    neovim peco picom \
    flameshot \
    google-chrome brave \
    authy terminator tmux \
    discord betterdiscord-installer-bin \
    telegram-desktop-bin \
    vscode-bin \
    btop nvitop

# visual-studio-code-bin
# fzf
rm -rf ~/.fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install

# Oh myzsh
rm -r /root/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

### Python
# Poetry
curl -sSL https://install.python-poetry.org | python3 -
# Add `export PATH="/home/duynguyen/.local/bin:$PATH"` to your shell configuration file.

# pyenv
git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
git clone https://github.com/pyenv/pyenv-update.git $(pyenv root)/plugins/pyenv-update
git clone https://github.com/pyenv/pyenv-doctor.git $(pyenv root)/plugins/pyenv-doctor

# Install fish
apt-add-repository ppa:fish-shell/release-3 \
    && apt-get update \
    && apt-get install -y fish

# Change the default shell to fish
chsh -s /usr/bin/fish \
    && echo /usr/bin/fish | tee -a /etc/shells

# Download fish shell package manager
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
fisher self-update
fisher z pyenv jorgebucaran/fish-getopts

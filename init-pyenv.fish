#!/usr/bin/fish

# Python depencies
apt update
apt install --no-install-recommends \
    make \
    build-essential \
    libssl-dev \
    zlib1g-dev \
    libbz2-dev \
    libreadline-dev \
    libsqlite3-dev \
    wget \
    curl \
    llvm \
    libncurses5-dev \
    xz-utils \
    tk-dev \
    libxml2-dev \
    libxmlsec1-dev \
    libffi-dev \
    liblzma-dev

# Clone the repo
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# Writing config file for fish shell
echo '# Settings for pyenv
set -Ux PYENV_ROOT $HOME/.pyenv
set -Ux fish_user_paths $PYENV_ROOT/bin $fish_user_paths

if command -v pyenv 1>/dev/null 2>&1
    pyenv init - | source
end
' >> ~/.config/fish/config.fish 

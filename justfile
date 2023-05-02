# Required packages/libraries
#   make gcc g++ python ruby openssl

set export
GOLANG_VERSION := "1.19.3"
GOLANG_SHASUM := "74b9640724fd4e6bb0ed2a1bc44ae813a03f1e72a4c76253e2d5c015494430ba"

default:
  @just -l
  @just --choose

all: homebrew
  /bin/bash -c "$HOME/bin/just brew-bundle"


# bootstrap with dotbot
bootstrap:
  ./bootstrap

# run dotbot with default.yaml
dotbot:
  sh ./submodules/dotbot/bin/dotbot -c default.yaml

# install rust via rustup
install-rust:
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

install-go:
  url="https://golang.org/dl/go${GOLANG_VERSION}.linux-amd64.tar.gz" && \
  wget -O go.tgz -nv "$url" && \
  echo "${GOLANG_SHASUM} *go.tgz" | sha256sum -c - && \
  sudo tar -C /usr/local -xzf go.tgz && \
  rm go.tgz

# install homebrew
homebrew:
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> $HOME/.profile
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"


# install homebrew utils via Brewfile
brew-bundle:
  brew tap homebrew/bundle
  brew bundle --file=Brewfile --no-lock

# setup shell
shell:
  # starship
  curl -sS https://starship.rs/install.sh | sh -s -- -b $HOME/bin
  # resh
  # curl -fsSL https://raw.githubusercontent.com/curusarn/resh/master/scripts/rawinstall.sh | bash

# install golang shell utils
go-shell:
  brew install gron viddy
  go install github.com/psanford/wormhole-william@latest

# install rust shell utils
rust-shell:
  #!/usr/bin/env bash
  if hash brew 2>/dev/null; then
    brew install bat exa fd ripgrep dust hexyl choose-rust watchexec
  else
    echo "brew needed"
  fi

# install onepassword-cli
op:
  curl -sLO https://downloads.1password.com/linux/debian/amd64/stable/1password-cli-amd64-latest.deb
  sudo dpkg --install 1password-cli-amd64-latest.deb

# install python3.x with pyenv
python-setup:
  # brew install pyenv make openssl gcc
  # TODO: Ubuntu-linux specific for WSL. Need to refactor this into OS-specific handlers
  sudo apt install gcc g++ openssl make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
  pyenv install $(pyenv install -l | grep -v - | tr -d ' ' | grep '^3' | tail -1) && pyenv rehash

# install phylum CLI latest
phylum:
  #!/usr/bin/env bash
  if hash minisign 2>/dev/null; then
    curl -sS https://raw.githubusercontent.com/phylum-dev/cli/main/scripts/phylum-init.sh | sh -s -- -y
  else
    echo "Minisign needed. Install first!"
  fi


# formulae:
#   # packages
#   brew install gpg
#   brew install macvim
#   brew install pinentry-mac
#   brew install python
#   brew install reattach-to-user-namespace
#   brew install tig
#   brew install tmux
#   brew install zsh
#   # casks
#   brew cask install vlc
#   brew cask install alacritty
#   # fonts
#   brew tap homebrew/cask-fonts
#   brew install font-dejavu-sans-mono-for-powerline
#   # yabai and skhd
#   # brew tap koekeishiya/formulae
#   # brew install yabai
#   # brew install skhd
#
# services:
#   # brew services start koekeishiya/formulae/yabai
#   # brew services start koekeishiya/formulae/skhd
#
# hunter:
#   brew install gstreamer
#   brew install gst-plugins-base
#   brew install libffi
#   brew install libmagic
#   git clone https://github.com/rabite0/hunter.git ~/tmp/hunter
#   PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig" cargo +nightly install --path ~/tmp/hunter
#
# disable-power-chime:
#   defaults write com.apple.PowerChime ChimeOnNoHardware -bool true
#   killall PowerChime


# Required packages/libraries
#   make gcc g++ python ruby openssl

bootstrap:
  ./bootstrap

dotbot:
  sh ./submodules/dotbot/bin/dotbot -c default.yaml

rustup:
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

homebrew:
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

rust-shell:
  #!/usr/bin/env bash
  if hash brew 2>/dev/null; then
    brew install bat exa fd ripgrep dust hexyl choose-rust watchexec
  else
    echo "brew needed"
  fi

starship:
  curl -sS https://starship.rs/install.sh | sh -s -- -b $location/bin

go-shell:
  brew install gron viddy

python-setup:
  brew install pyenv make openssl
  pyenv install $(pyenv install -l | grep -v - | tr -d ' ' | grep '^3' | tail -1) && pyenv rehash

phylum:
  #!/usr/bin/env bash
  if hash minisign 2>/dev/null; then
    curl -sS https://raw.githubusercontent.com/phylum-dev/cli/main/scripts/phylum-init.sh | sh -s -- -y
  else
    echo "Minisign needed. Install first!"
  fi

python-shell:
  brew install magic-wormhole

formulae:
  # packages
  brew install gpg
  brew install macvim
  brew install pinentry-mac
  brew install python
  brew install reattach-to-user-namespace
  brew install tig
  brew install tmux
  brew install zsh
  # casks
  brew cask install vlc
  brew cask install alacritty
  # fonts
  brew tap homebrew/cask-fonts
  brew install font-dejavu-sans-mono-for-powerline
  # yabai and skhd
  # brew tap koekeishiya/formulae
  # brew install yabai
  # brew install skhd

services:
  # brew services start koekeishiya/formulae/yabai
  # brew services start koekeishiya/formulae/skhd

hunter:
  brew install gstreamer
  brew install gst-plugins-base
  brew install libffi
  brew install libmagic
  git clone https://github.com/rabite0/hunter.git ~/tmp/hunter
  PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig" cargo +nightly install --path ~/tmp/hunter

disable-power-chime:
  defaults write com.apple.PowerChime ChimeOnNoHardware -bool true
  killall PowerChime


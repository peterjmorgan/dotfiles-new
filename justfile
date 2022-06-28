bootstrap:
  ./bootstrap

rustup:
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

homebrew:
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

rust-shell:
  brew install bat exa fd ripgrep dust hexyl choose-rust

go-shell:
  brew install gron viddy

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

# ledger:
  # pip3 install ledger_agent

disable-power-chime:
  defaults write com.apple.PowerChime ChimeOnNoHardware -bool true
  killall PowerChime


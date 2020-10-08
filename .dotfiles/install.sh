#!/usr/bin/env bash

echo "Creating Workspaces"
mkdir -p -v ~/Workspaces/{Components,Docker,Drupal/{Modules,Themes},Misc/Interactives,Python,R,Sites}

echo "Enabling xcode-select"
xcode-select --install

echo "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing pip"
curl -fsSL https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python get-pip.py --user
pip3 install Pygments

brew install \
  composer \
  flac \
  ffmpeg \
  gh git gitmoji git-lfs \
  go \
  httrack \
  hugo \
  lame \
  nvm node \
  mas \
  openjdk
  pandoc \
  pcre \
  python \
  r \
  rclone \
  sqlite \
  svn \
  yarn \
  youtube-dl \
  zsh zsh-completions

brew cask install \
  alfred \
  bitwarden \
  cryptomator \
  cyberduck \
  docker \
  dropbox \
  firefox \
  github \
  google-chrome \
  handbrake \
  imageoptim \
  insomnia \
  kap \
  lingon-x \
  mamp \
  microsoft-teams \
  mysqlworkbench \
  notion \
  qlcolorcode \
  qlmarkdown \
  qlstephen \
  quicklook-json \
  rocket \
  rstudio \
  sublime-text \
  vanilla \
  vlc \
  visual-studio-code \
  wine-stable \
  xquartz
  
# Install Fonts
brew tap homebrew/cask-fonts

brew cask install \
  font-fira-code \
  font-fira-mono \
  font-fira-sans \
  font-ibm-plex \
  font-lato \
  font-open-sans \
  font-nunito \
  font-roboto \
  font-roboto-mono \
  font-roboto-slab \
  font-source-sans-pro
  
# Activate nvm
source $(brew --prefix nvm)/nvm.sh && echo "source $(brew --prefix nvm)/nvm.sh" >> ~/.zshrc

# zsh-plugins
sh <(curl -sL https://raw.githubusercontent.com/vladmyr/dotfiles-plugin/master/install.sh)
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install Mac App Store applications
mas install 937984704 # Amphetamine
mas install 640199958 # Apple Developer
mas install 1489591003 # Edison Mail
mas install 682658836 # GarageBand
mas install 408981434 # iMovie
mas install 409183694 # Keynote
mas install 441258766 # Magnet
mas install 462058435 # Microsoft Excel
mas install 784801555 # Microsoft OneNote
mas install 985367838 # Microsoft Outlook
mas install 462062816 # Microsoft PowerPoint
mas install 1295203466 # Microsoft Remote Desktop 10
mas install 1274495053 # Microsoft To Do
mas install 462054704 # Microsoft Word
mas install 409203825 # Numbers
mas install 823766827 # OneDrive
mas install 409201541 # Pages
mas install 803453959 # Slack
mas install 1482454543 # Twitter
mas install 425424353 # The Unarchiver
mas install 497799835 # Xcode

sudo xcodebuild -license accept

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# todo: pull dotfiles
# todo: install fonts

# VSCode extensions are now handled by settings sync.

echo "Additional applications..."
open \
  https://office365.psu.edu/ \
  https://adobe.psu.edu \
  https://psu.zoom.us/ \
  https://softwarerequest.psu.edu/


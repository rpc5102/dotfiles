#!/usr/bin/env bash

echo "Creating Workspaces"
mkdir -p -v ~/Workspaces/{Components,Docker,Drupal/Modules,Interactives,Misc,Python,R}

echo "Enabling xcode-select"
xcode-select --install

echo "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing pip"
curl -fsSL https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python get-pip.py --user
pip3 install Pygments

brew tap homebrew/science

brew cask install \
  alfred \
  bitwarden \
  cryptomator \
  cyberduck \
  docker \
  dropbox \
  firefox \
  firefox-developer-edition \
  github \
  google-chrome \
  handbrake \
  imageoptim \
  kitematic \
  mamp \
  microsoft-teams \
  mysqlworkbench \
  rocket \
  rstudio \
  sublime-text \
  vanilla \
  vlc \
  visual-studio-code \
  xquartz

brew install \
  git gitmoji \
  httrack \
  nvm node \
  mas \
  pcre \
  python \
  r \
  sqlite \
  zsh zsh-completions

# zsh-plugins
sh <(curl -sL https://raw.githubusercontent.com/vladmyr/dotfiles-plugin/master/install.sh)
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install Mac App Store applications
mas install 937984704 # Amphetamine
mas install 408981434 # iMovie
mas install 409183694 # Keynote
mas install 441258766 # Magnet
mas install 1295203466 # Microsoft Remote Desktop 10
mas install 409203825 # Numbers
mas install 409201541 # Pages
mas install 803453959 # Slack
mas install 570549457 # Spotica Menu

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# todo: pull dotfiles
# todo: install fonts

echo "Installing vscode extensions"

vscodeExtensions=("jasonlhy.vscode-browser-sync" "meirbon.flatland-monokai-improved" "Shan.code-settings-sync" "naumovs.color-highlight" "file-icons.file-icons" "Zignd.html-css-class-completion" "hdg.live-html-previewer" "christian-kohler.npm-intellisense" "neilbrayfield.php-docblocker" "ikappas.phpcs" "ms-python.python" "Ikuyadeu.r" "prettier-vscode" "HookyQR.beautify" "ms-vscode-remote.remote-containers" "ms-vscode-remote.remote-ssh" "ms-vscode-remote.remote-ssh-edit" "ms-vscode-remote.remote-ssh-explorer" "ms-vscode-remote.remote-wsl" "ms-vscode.sublime-keybindings" "ecmel.vscode-html-css" "bmewburn.vscode-intelephense-client" "wayou.vscode-todo-highlight" "formulahendry.auto-close-tag" "formulahendry.auto-rename-tag")

for extension in $vscodeExtensions
do
  code --install-extension $extension
done

# todo: enable extensions

echo "Additional applications..."
open \
  https://office365.psu.edu/ \
  https://adobe.psu.edu \
  https://psu.zoom.us/ \
  https://downloads.its.psu.edu/


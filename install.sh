## 홈브루 설치는 홈페이지에서 직접 한다.
# 블루투스 연결
brew install blueutil
# Github cli
brew install gh
# mac AppStore
brew install --cask mas
# iTerm2
brew install --cask iterm2
# JetBrains Toolbox
brew install --cask jetbrains-toolbox
# vscode
brew install --cask visual-studio-code
# docker
brew install --cask docker
# m-cli
brew install m-cli
# netcat
brew install netcat
# Chrome
brew install --cask google-chrome
# Macs Fan Control
brew install --cask macs-fan-control
# App Cleaner
brew install --cask appcleaner
# drawio
brew install --cask drawio
# notion
brew install --cask notion
# clipy
brew install --cask clipy
# postman
brew install --cask postman
# mycli
brew install mycli
# input-source-pro
brew install input-source-pro
# htop
brew install htop
# smartmontools
brew install smartmontools
# bat
brew install bat
# mac cli
brew install wget
sh -c "$(wget https://raw.githubusercontent.com/guarinogabriel/mac-cli/master/mac-cli/tools/install -O -)"
# check system info
brew install fastfetch
# docker tui information checker
brew install lazydocker
# git tui information checker
brew install lazygit
# manage java versions
## asdf
#brew install asdf
#asdf plugin add java
#echo "# manage java versions " >> ~/.zshrc
#echo ". \$(brew --prefix asdf)/libexec/asdf.sh" >> ~/.zshrc
#source ~/.zshrc

## VersionFox
brew install vfox
vfox add java
echo 'eval "$(vfox activate zsh)"' >> ~/.zshrc
source ~/.zshrc

# mas install
mas install 441258766
mas install 1437130425
mas install 425264550
mas install 869223134
mas install 416746898
mas install 492835684
mas install 1023251042

# Workflows
cp -r ./workflows/FinderLauncher.workflow ~/Library/Services/
cp -r ./workflows/iTermLauncher.workflow ~/Library/Services/
cp -r ./workflows/SafariLauncher.workflow ~/Library/Services/
cp -r ./workflows/ChromeLauncher.workflow ~/Library/Services/

# vmware fusion
brew install --cask vmware-fusion
# MS Office
brew install microsoft-excel microsoft-word microsoft-powerpoint

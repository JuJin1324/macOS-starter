# mac 개발 툴 설치
#xcode-select --install
# 홈브루 설치
#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# 블루투스 연결
brew install blueutil
# Github cli
brew install gh
# mac AppStore
brew install --cask mas
# iTerm2
brew install --cask iterm2
# JDK
brew install --cask corretto@8
brew install --cask corretto@11
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
# vmware fusion
brew install --cask vmware-fusion
# postman
brew install --cask postman
# mycli
brew install mycli
# input-source-pro
brew install input-source-pro
# MS Office
brew install microsoft-excel microsoft-word microsoft-powerpoint

# Workflows
cp -r ./workflows/FinderLauncher.workflow ~/Library/Services/
cp -r ./workflows/iTermLauncher.workflow ~/Library/Services/
cp -r ./workflows/SafariLauncher.workflow ~/Library/Services/

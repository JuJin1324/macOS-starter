# mac 개발 툴 설치
xcode-select --install
# 홈브루 설치
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# 블루투스 연결
brew install blueutil
# Github cli
brew install gh
# mac AppStore
brew install --cask mas
# iTerm2
brew install --cask iterm2
# JDK
brew tap homebrew/cask-versions
brew install --cask corretto8
brew install --cask corretto11
# JetBrains Toolbox
brew install --cask jetbrains-toolbox
# vscode
brew install --cask visual-studio-code
# docker
brew install --cask docker
# m-cli
brew install m-cli
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

# Workflows
mv workflows/FinderLauncher.workflow ~/Library/Services/
mv workflows/FinderLauncher2.workflow ~/Library/Services/
mv workflows/iTermLauncher.workflow ~/Library/Services/
mv workflows/iTermLauncher2.workflow ~/Library/Services/
mv workflows/SafariLauncher.workflow ~/Library/Services/
mv workflows/SafariLauncher2.workflow ~/Library/Services/

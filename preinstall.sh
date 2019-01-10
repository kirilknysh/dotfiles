#!/usr/bin/env bash

brew update
brew upgrade

brew install zsh
curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh

brew cleanup

echo "also install:"
echo "solarized https://ethanschoonover.com/solarized/"
read
echo "nodejs+npm https://nodejs.org/en/download/"
read
echo "VS Code https://code.visualstudio.com/docs/setup/mac"
read

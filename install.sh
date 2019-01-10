#!/usr/bin/env bash

ZSHRC=" ~/.zshrc"

echo "settle .functions"
cp .functions ~/
echo "source .functions" >> $ZSHRC

echo "set zsh theme to 'blinks'"
sed -i '' -e '/^ZSH_THEME/s/^.*$/ZSH_THEME="blinks"/' $ZSHRC

echo "prepare npm completion"
if which npm &> /dev/null; then
    npm completion > .npm_completion
    cp .npm_completion ~/
    echo "source .npm_completion" >> $ZSHRC
fi;

echo "VS Code settings"
cp .vsc.settings.json "~/Library/Application Support/Code/User/settings.json"

echo "settle iTerm settings"
echo "go to Preferences -> General"
read
echo "check 'Load preferences from a custom folder' = dotfiles/.iTerm"
read
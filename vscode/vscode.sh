#!/bin/sh

# Installs and enables the nord theme
VSCODE_SETTINGS=~/.config/Code/User/settings.json
code --install-extension arcticicestudio.nord-visual-studio-code
cat $VSCODE_SETTINGS | jq '."workbench.colorTheme" = "Nord"' > $VSCODE_SETTINGS.tmp
mv $VSCODE_SETTINGS.tmp $VSCODE_SETTINGS
rm $VSCODE_SETTINGS.tmp

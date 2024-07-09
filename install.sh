#!/bin/bash

DIR=~/Library/Developer/Xcode/UserData/FontAndColorThemes/
mkdir -p $DIR
cp ./ColorTheme/*.xccolortheme $DIR
cp ./IDETemplateMacros.plist ~/Library/Developer/Xcode/UserData/IDETemplateMacros.plist
git clone git@github.com:DouKing/MyFonts.git ~/Library/Fonts/MyFonts

TEMPLATES_DIR=~/Library/Developer/Xcode/Templates/File\ Templates/
if [[ ! -d "${TEMPLATES_DIR}" ]]; then
	mkdir -p "${TEMPLATES_DIR}"
	cp -R ./DouKing "${TEMPLATES_DIR}"
fi
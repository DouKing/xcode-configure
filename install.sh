#!/bin/bash

DIR=~/Library/Developer/Xcode/UserData/FontAndColorThemes/
mkdir -p $DIR
cp ./ColorTheme/*.xccolortheme $DIR

cp ./IDETemplateMacros.plist ~/Library/Developer/Xcode/UserData/IDETemplateMacros.plist

cp -R ./font ~/Library/Fonts/

TEMPLATES_DIR=~/Library/Developer/Xcode/Templates/File\ Templates/DouKing
if [[ ! -d "${TEMPLATES_DIR}" ]]; then
	mkdir -p "${TEMPLATES_DIR}"
	cp -R ./DouKing "${TEMPLATES_DIR}"
	./change-file-header "${TEMPLATES_DIR}"
fi
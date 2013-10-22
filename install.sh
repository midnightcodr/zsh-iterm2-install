#!/usr/bin/env bash
TMP_DIR=~/tmp
[ -d $TMP_DIR ] || mkdir $TMP_DIR
cd $TMP_DIR
echo "Downloading iTerm2 (v1.0 stable)"
curl -O http://www.iterm2.com/downloads/stable/iTerm2_v1_0_0.zip 
open .
echo "Unzip the downloaded zip file and drag file iTerm to the Application folder or the dock, make sure don't run it yet. Press Enter to continue once done"
read -n 1

cd $TMP_DIR
echo "Downloading PowerlineSymbols Font"
curl -O https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf 
echo "Install the downloaded font, Press Enter to continue once done"
read -n 1
open .

echo "Installing oh-my-zsh"
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

sed -i '' 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' ~/.zshrc

echo "Now open up iTerm2 and do the followings:"
echo "1) Preferences -> Default -> Text -> Regular Font"
echo "   Pick 'PowerlineSymbols' from the list, keep font size at 12pt, if you have high-def display, choose a larger size such as 14pt"
echo "2) Repeat previous step for Non-ASCII Font"
echo "3) Preferences -> Default -> Colors -> Load Presets -> Tango Dark"

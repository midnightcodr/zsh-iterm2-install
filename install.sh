#!/usr/bin/env bash
TMP_DIR=~/tmp
[ -d $TMP_DIR ] || mkdir $TMP_DIR
cd $TMP_DIR
curl -O https://iterm2.googlecode.com/files/iTerm2-1_0_0_20130324-LeopardPPC.zip
open .
echo "Unzip the downloaded zip file and drag it to the Application folder or the dock, Press Enter to continue once done"
read -n 1

echo "Installing Menlo Powerline font"
curl https://gist.github.com/qrush/1595572/raw/417a3fa36e35ca91d6d23ac961071094c26e5fad/Menlo-Powerline.otf -o ~/Library/Fonts/Menlo-Powerline.otf

echo "Installing oh-my-zsh"
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

sed -i '' 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' ~/.zshrc

echo "Now open up iTerm2 and do the followings:"
echo "1) Preferences -> Default -> Text -> Regular Font"
echo "   Pick 'Menlo Regular for Powerline' from the list, keep font size at 12pt"
echo "2) Preferences -> Default -> Colors -> Load Presets -> Tango Dark"

#!/bin/bash
echo Installing packages: ffmpeg, git, mpv, python, sqlite, thefuck, wget, and youtube-dl
echo Installing casks: 1password, adobe-creative-cloud, firefox, forklift, github, google-chrome, mpv, numi, pocket-casts, private-internet-access, sublime-text, the-unarchiver, and tweetbot
read -p "Press any key to continue… " -n1 -s
echo '\n'

# Check that Homebrew is installed and install if not
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
fi

# Update any existing homebrew recipes
brew update

# Upgrade any already installed formulae
brew upgrade

# Install brew packages
brew install ffmpeg
brew install git
brew install mpv
brew install python
brew install sqlite
brew install thefuck
brew install wget
brew install youtube-dl

# Install F1Viewer
brew tap SoMuchForSubtlety/tap
brew install SoMuchForSubtlety/tap/f1viewer

# Install cask
brew tap phinze/homebrew-cask

# Install cask packages
brew cask install 1password
brew cask install adobe-creative-cloud
brew cask install firefox
brew cask install forklift
brew cask install github
brew cask install google-chrome
brew cask install mpv
brew cask install numi
brew cask install pocket-casts
brew cask install private-internet-access
brew cask install sublime-text
brew cask install the-unarchiver
brew cask install tweetbot

# Finish up
brew cleanup
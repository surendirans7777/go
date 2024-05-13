#!/bin/bash

# Get the latest Go version number
GO_VERSION=$(curl -sL https://golang.org/dl/ | grep -oP 'href="\Kgo\d+\.\d+\.\d+\.linux-amd64\.tar\.gz' | head -n 1)

# Download the Go archive
wget https://dl.google.com/go/$GO_VERSION

# Extract the archive
tar -xf go$GO_VERSION.linux-amd64.tar.gz

# Move the Go directory to the appropriate location
sudo mv go /usr/local

# Update environment variables
# For Bash shell
echo 'export GOROOT=/usr/local/go' >> ~/.bashrc
echo 'export GOPATH=$HOME/go' >> ~/.bashrc
echo 'export PATH=$PATH:$GOROOT/bin' >> ~/.bashrc

# For Zsh shell
echo 'export GOROOT=/usr/local/go' >> ~/.zshrc
echo 'export GOPATH=$HOME/go' >> ~/.zshrc
echo 'export PATH=$PATH:$GOROOT/bin' >> ~/.zshrc

# Reload the shell configuration (replace with your shell if different)
source ~/.bashrc

# Verify Go installation
go version

echo "Go is installed. Please restart your terminal for changes to take effect."

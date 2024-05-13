#!/bin/bash

# Update package lists
sudo apt update

# Install required dependencies
sudo apt install -y curl

# Choose Go version (modify as needed)
GO_VERSION="1.20.1"

# Download Go binary
curl -OL https://golang.org/dl/go$GO_VERSION.linux-amd64.tar.gz

# Extract the downloaded archive (modify path if not using /usr/local/)
sudo tar -xvf go$GO_VERSION.linux-amd64.tar.gz -C /usr/local/

# Add Go to the system's PATH (consider adding instructions for different shells)
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc  # For Bash
source ~/.bashrc

# Cleanup
rm go$GO_VERSION.linux-amd64.tar.gz

# Verify installation
go version

echo "Go version $GO_VERSION is installed."
echo "**Please restart your terminal for changes to take effect.**"

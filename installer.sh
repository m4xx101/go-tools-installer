#!/bin/bash

banner()
{
  echo "+------------------------------------------+"
  printf "| %-40s |\n" "`date`"
  echo "|                                          |"
  printf "|`tput bold` %-40s `tput sgr0`|\n" "$@"
  echo "+------------------------------------------+"
}

banner "Installing Go in system...."

wget https://golang.org/dl/go1.16.4.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.14.3.linux-amd64.tar.gz
echo ""
echo "Setting env varaible..."
echo "export GOPATH=$HOME/go" >> ~/.bashrc
echo "export GOROOT=/usr/local/go" >> ~/.bashrc
echo "PATH=$PATH:$GOROOT/bin/:$GOPATH/bin" >> ~/.bashrc

go get -u github.com/tomnomnom/anew
go get -u github.com/tomnomnom/assetfinder
go get -u github.com/tomnomnom/httprobe
go get github.com/tomnomnom/waybackurls
go get -u github.com/tomnomnom/httprobe
go get -u github.com/tomnomnom/unfurl
GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder
GO111MODULE=on go get -v github.com/projectdiscovery/dnsx/cmd/dnsx
GO111MODULE=on go get -v github.com/projectdiscovery/httpx/cmd/httpx
GO111MODULE=on go get -v github.com/projectdiscovery/shuffledns/cmd/shuffledns
GO111MODULE=on go get -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei
go get -u github.com/ffuf/ffuf
go get github.com/003random/getJS
go get github.com/hakluke/hakrawler
go get github.com/hakluke/haktrails

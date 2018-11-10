#!/bin/bash

#instalacja gita

ssh $1 "sudo yum install git -y"
ssh $1 "git clone https://github.com/jkanclerz/google-search-python.git"

ssh $1 "echo 'export SEARCH_ENGINE_ID=006879359584856769921:rplfy3clmho' >> .bashrc "
ssh $1 "echo 'GOOGLE_CLOUD_API_KEY=AIzaSyDLLC1pqOxkWA8jUjM-Cfwbl_13Sh_2t98' >> .bashrc"

#tworzenie katalogu bin
ssh $1 "mkdir ~/bin"
scp ./imageMe.sh "$1: ~/bin/imageMe"
ssh $1 "chmod +x ~/bin/imageMe"

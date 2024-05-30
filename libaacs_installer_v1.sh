#!/usr/bin/env bash
  #========================================
  # Project: LIBAACS INSTALLER v1.1
  # Author:  ConzZah / ©️ 2024
  # Last Modification: 31.05.2024 / 00:42
  #========================================
clear; echo "[ ConzZah's LIBAACS INSTALLER v1.1 ]"; echo ""; echo ""; echo "[ PRESS ANY KEY TO START ]"; read -n 1 -s
sudo apt-get install vlc libaacs0 libbluray-bdj libbluray2; echo ""; echo "[ DONE INSTALLING LIBAACS! ]"; echo ""
echo "[ DOWNLOADING KEYDB.CFG FROM: ]"; echo "[ https://archive.org/download/keydb_eng/keydb_eng.zip ]"; echo ""; echo "[ PLEASE WAIT ]"; mkdir -p ~/.config/aacs/; cd ~/.config/aacs/
wget -q -O last_updated.txt https://gist.githubusercontent.com/ConzZah/5631e144da455e9c08daa1dc80a01cf2/raw/
cat last_updated.txt; echo ""; rm last_updated.txt
wget -q --show-progress -O keydb_eng.zip https://archive.org/download/keydb_eng/keydb_eng.zip; 
7z x keydb_eng.zip; mv keydb.cfg KEYDB.cfg; rm keydb_eng.zip; rm wget-log
echo ""; echo "[ DONE INSTALLING LIBACCS & KEYDB.cfg , ENJOY YOUR BLU-RAYS! ]"; echo ""; echo "[ PRESS ANY KEY TO EXIT ]"; read -n 1 -s; exit

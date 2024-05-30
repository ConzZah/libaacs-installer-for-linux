#!/usr/bin/env bash
  #========================================
  # Project: LIBAACS INSTALLER v1
  # Author:  ConzZah / ©️ 2024
  # Last Modification: 30.05.2024 / 18:50
  #========================================
clear; echo " ConzZah's LIBAACS INSTALLER v1"; echo ""
sudo apt-get install vlc libaacs0 libbluray-bdj libbluray2
echo ""; echo "DONE INSTALLING LIBAACS!"; echo ""
echo "DOWNLOADING KEYDB.CFG FROM:"; echo "https://archive.org/download/keydb_eng/keydb_eng.zip"; echo ""; echo "PLEASE WAIT"; echo ""
mkdir -p ~/.config/aacs/; cd ~/.config/aacs/
wget -q --show-progress -O keydb_eng.zip https://archive.org/download/keydb_eng/keydb_eng.zip
7z x keydb_eng.zip; mv keydb.cfg KEYDB.cfg && rm keydb_eng.zip
echo ""; echo "DONE INSTALLING LIBACCS, ENJOY YOUR BLU-RAYS!"; echo "PRESS ANYTHING TO CLOSE"
read -n 1 -s; exit
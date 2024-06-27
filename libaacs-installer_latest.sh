#!/usr/bin/env bash
  #========================================
  # Project: LIBAACS INSTALLER v2
  # Author:  ConzZah / ©️ 2024
  # Last Modification: 27.06.2024 / 06:04
  #========================================
function main {
_install="deb_install"
done_msg="[ DONE INSTALLING LIBAACS ]"
is_alpine=$(uname -v|grep -o -w Alpine)
if [[ "$is_alpine" == "Alpine" ]]; then _install="alp_install"; fi
clear; echo "[ ConzZah's LIBAACS INSTALLER v2 ]"; echo ""
echo "THIS WILL DOWNLOAD & INSTALL THE FOLLOWING PACKAGES:"; echo ""
echo "- vlc"
echo "- libaacs"
echo "- libbluray"
echo "- 7z & base64 (for converting & extracting keydb.cfg)"
echo ""; echo "[ PRESS ANY KEY TO START ]"; echo ""; read -n 1 -s;
$_install
}
# install for debian:
function deb_install {
sudo apt install -y vlc libaacs0 libbluray-bdj libbluray2 7zip base64 >/dev/null 2>&1
echo ""; echo "$done_msg"; echo ""; keydb
}
# install for alpine:
function alp_install {
doas apk add vlc-qt libaacs libbluray 7zip base64 >/dev/null 2>&1
echo ""; echo "$done_msg"; echo ""; keydb
}
# download & installation of keydb.cfg
function keydb {
echo "[ DOWNLOADING KEYDB.CFG ]"; mkdir -p ~/.config/aacs/; cd ~/.config/aacs/
wget -q -O keydb_eng.zip.txt https://gist.github.com/ConzZah/f6a71135f5b273a918419dc3c43cd4fd/raw; base64 -d keydb_eng.zip.txt > keydb_eng.zip;
echo ""; echo "[ EXTRACTING KEYDB.CFG.. ]"; echo ""; 7z x keydb_eng.zip >/dev/null 2>&1; mv keydb.cfg KEYDB.cfg; rm keydb_eng.zip.txt && rm keydb_eng.zip
echo "[ DONE INSTALLING LIBACCS & KEYDB.cfg , ENJOY YOUR BLU-RAYS! ]"; echo ""; echo "[ PRESS ANY KEY TO EXIT ]"; echo ""; read -n 1 -s; exit
}
main
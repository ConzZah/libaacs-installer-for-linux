#!/usr/bin/env bash
  #========================================
  # Project: LIBAACS INSTALLER v2.1
  # Author:  ConzZah / ©️ 2024
  # Last Modification: 10.12.2024 / 10:27
  #========================================
function main {
_install="deb_install"
done_msg="[ DONE INSTALLING LIBAACS ]"
is_alpine=$(uname -v|grep -o -w Alpine)
if [[ "$is_alpine" == "Alpine" ]]; then _install="alp_install"; fi
clear; echo "[ ConzZah's LIBAACS INSTALLER v2.1 ]"; echo ""
echo -e "THIS WILL DOWNLOAD & INSTALL THE FOLLOWING PACKAGES:\n"
echo "- vlc"
echo "- curl"
echo "- libaacs"
echo "- libbluray"
echo "- 7z & base64 (for converting & extracting keydb.cfg)"
echo -e "\n[ PRESS ANY KEY TO START ]\n"; read -n 1 -s
$_install
}
# install for debian:
function deb_install {
sudo apt install -y vlc libaacs0 libbluray-bdj libbluray2 curl 7zip base64 >/dev/null 2>&1
echo -e "\n$done_msg\n"; keydb
}
# install for alpine:
function alp_install {
doas apk add vlc-qt libaacs libbluray curl 7zip base64 >/dev/null 2>&1
echo -e "\n$done_msg\n"; keydb
}
# download & installation of keydb.cfg
function keydb {
echo -e "[ DOWNLOADING KEYDB.CFG ]\n"; mkdir -p "$HOME/.config/aacs/"; cd "$HOME/.config/aacs/"
curl -# -L -o keydb_eng.7z.txt https://gist.github.com/ConzZah/f6a71135f5b273a918419dc3c43cd4fd/raw

base64 -d keydb_eng.7z.txt > keydb_eng.7z

echo -e "\n[ EXTRACTING KEYDB.CFG.. ]\n"; 7z x keydb_eng.7z >/dev/null 2>&1; mv keydb.cfg KEYDB.cfg; rm keydb_eng.7z.txt keydb_eng.7z
echo "[ DONE INSTALLING LIBACCS & KEYDB.cfg , ENJOY YOUR BLU-RAYS! ]"; echo ""; echo "[ PRESS ANY KEY TO EXIT ]"; echo ""; read -n 1 -s; exit
}
main

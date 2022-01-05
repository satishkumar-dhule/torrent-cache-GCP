sudo apt install -y transmission-cli
sudo pip3 install -U telegram-upload
mkdir /tmp/down
ln -sf /tmp/down downloads

transmission-cli -w ~/downloads -f ~/exit_cli.sh $1
find ~/down  -regex ".*\s.*"  -print0 |   while read -d $'\0' f; do echo mv -v \"$f\" \"${f// /_}\"; done
find ~/down -type f -follow -exec telegram-upload -d {} \;

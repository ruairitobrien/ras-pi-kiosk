sudo apt-get update
sudo apt-get upgrade
sudo apt-get install --no-install-recommends xserver-xorg x11-xserver-utils xinit openbox
sudo apt-get install --no-install-recommends chromium-browser

cat autostart >> /etc/xdg/openbox/autostart

echo "Put the following into .bash_profile and reboot"
echo "[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && startx -- -nocursor"

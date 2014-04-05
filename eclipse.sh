#!/usr/bin/env bash

wget=/usr/bin/wget
tar=/bin/tar

mkdir -p /tmp/eclipse

$wget "http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/kepler/SR2/eclipse-jee-kepler-SR2-linux-gtk-x86_64.tar.gz" -O /tmp/eclipse/eclipse.tar.gz

$tar -vzxf /tmp/eclipse/eclipse.tar.gz -C /tmp/eclipse/
sudo mv /tmp/eclipse/eclipse /opt/eclipse
rm -rf /tmp/eclipse/

FILE="/usr/share/applications/eclipse.desktop"

sudo touch $FILE
sudo echo "#!/usr/bin/env xdg-open" >> $FILE
sudo echo -e "\n"
sudo echo "[Desktop Entry]" >> $FILE
sudo echo "Type=Application" >> $FILE
sudo echo "Terminal=false" >> $FILE
sudo echo "StartupNotify=true" >> $FILE
sudo echo "Icon=/opt/eclipse/icon.xpm" >> $FILE
sudo echo "Name=Eclipse" >> $FILE
sudo echo "Exec=env UBUNTU_MENUPROXY=0 /opt/eclipse/eclipse" >> $FILE

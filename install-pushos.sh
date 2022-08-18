# grant storage permission
termux-setup-storage

# update repos
apt update
apt upgrade
pkg update
pkg upgrade

# install additional repositories
pkg install root-repo
pkg install x11-repo

# install desktop environment and vnc server
pkg install tigervnc --no-install-recommends
pkg install xfce4 --no-install-recommends
pkg install xfce4-terminal --no-install-recommends

# unpack rootfs archive
mv pushos-rootfs.tar ~/
cd ~/
tar -xvf pushos-rootfs.tar

# create splash screen
cd $PREFIX/etc/
rm -rf motd*
pkg install figlet
echo "figlet -f small PushOS" >> bash.bashrc
echo "echo Start PushOS: pushos-start" >> bash.bashrc
echo "echo Stop PushOS: pushos-stop" >> bash.bashrc
echo "echo PushOS geometry: 1380x720" >> bash.bashrc

# create start and stop files
cd $PREFIX/bin/
echo "vncserver -geometry 1380x720" > pushos-start
echo "vncserver -kill :1" > pushos-stop

# grant permissions to start and stop files
chmod +777 pushos-start
chmod +777 pushos-stop

# remove temporary files
cd ~/
rm -rf pushos-rootfs.tar
rm -rf PushOS/

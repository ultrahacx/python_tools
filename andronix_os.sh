#!/data/data/com.termux/files/usr/bin/bash
folder=ubuntu-fs

if [ -d "$folder" ]; then
  first=1
  echo "Skipping downloading.... Please remove older Ubuntu version"
fi
if [ "$first" != 1 ];then
  echo "Download Rootfs, this may take a while base on your internet speed."

  curl "https://andronixos.sfo2.cdn.digitaloceanspaces.com/OS/andronix_os.tar.gz" -o nul
  
  chmod +x andronix_os.tar.gz
  echo "  "
  echo "  "
  echo "Decompressing Rootfs, please be patient.."
  echo "  "
  echo "  "
  echo "It might take a little longer than expected due to large file size"
  proot --link2symlink tar xf andronix_os.tar.gz||:
  
echo "  "
echo "  "
echo "If you want to remove the Linux zip to free some space typ: rm andronix_os.tar.gz"
echo "  "
echo "  "
echo "You can now launch Ubuntu with the ./start-ubuntu.sh command"

fi
#!/data/data/com.termux/files/usr/bin/bash
chmod +x andronix_os.tar.gz
  echo "  "
  echo "  "
  echo "Decompressing Rootfs, please be patient.."
  echo "  "
  echo "  "
  echo "It might take a little longer than expected due to large file size"
  proot --link2symlink tar -xf andronix_os.tar.gz||:
  
echo "  "
echo "  "
echo "If you want to remove the Linux zip to free some space type: rm -rf andronix_os.tar.gz"
echo "  "
echo "  "
echo "You can now launch Ubuntu with the ./start-ubuntu.sh command"\
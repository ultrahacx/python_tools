#!/data/data/com.termux/files/usr/bin/bash
pkg install zip
echo  "Allow the Storage permission to termux"
sleep 2
termux-setup-storage

echo "Verify you have file named: debian_modded.zip in your internal storage"
sleep 3

echo "Copying file from your internal storage"
cp storage/shared/debian_modded.zip /data/data/com.termux/files/home/
echo "File transfer completed...Returning back to termux "

cd 
echo "Allowing permission to files"
chmod +x debian_modded.zip

echo "Extracting Zip"
unzip debian_modded.zip
rm -rf debian_modded.zip

chmod +x debian_modded.tar.gz 
echo "Extracting tar files"
tar xf debianbac.tar.gz

echo "Checking for file integrity"

FILE=start-ubuntu.sh
declare -i c=0
if test -f "$FILE"; then
    echo "Boot script present"
    echo " "
fi

FD=ubuntu-fs
if [ -d "$FD" ]; then
  echo "Boot container present...Files unchecked"
  echo " "
fi

UFD=ubuntu-binds
if [ -d "$UFD" ]; then
  echo "Sub-Boot container present"
fi

echo "All files present...If you still experience issues Contact Devs"
echo " "
echo "Start linux by command ./start-ubuntu.sh"

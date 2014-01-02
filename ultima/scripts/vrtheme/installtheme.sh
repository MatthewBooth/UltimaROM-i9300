#!/sbin/sh
# Copyright VillainROM 2011. All Rights Reserved
# cleanup from last time
[ -d /data/media/vrtheme-backup ] && rm -r /data/media/vrtheme-backup

# we need to first go through each file in the "app" folder, and for each one present, apply the modified theme to the APK
# let us copy each original APK here first. 
echo "Processing /system/app/"
busybox mkdir -p /data/media/vrtheme-backup/system/app
busybox mkdir -p /data/media/vrtheme/apply/system/app
cd /data/media/vrtheme/system/app/
for f in $(ls)
do
  echo "Processing $f"
  cp /system/app/$f /data/media/vrtheme/apply/system/app/
  cp /system/app/$f /data/media/vrtheme-backup/system/app/
done
echo "Backups done for system apps"

# repeat for /system/framework now


[ -d /data/media/vrtheme/system/framework ] && framework=1 || framework=0

if [ "$framework" -eq "1" ]; then
echo "Processing /system/framework"
busybox mkdir -p /data/media/vrtheme-backup/system/framework
busybox mkdir -p /data/media/vrtheme/apply/system/framework
cd /data/media/vrtheme/system/framework
for f in $(ls)
do
  echo "Processing $f"
  cp /system/framework/$f /data/media/vrtheme/apply/system/framework/
  cp /system/framework/$f /data/media/vrtheme-backup/system/framework/
done
echo "Backups done for frameworks"
fi

# repeat for /data/app now


[ -d /data/media/vrtheme/data ] && dataapps=1 || dataapps=0

if [ "$dataapps" -eq "1" ]; then
echo "Processing /data/app/"
busybox mkdir -p /data/media/vrtheme-backup/data/app
busybox mkdir -p /data/media/vrtheme/apply/data/app
cd /data/media/vrtheme/data/app/
for f in $(ls)
do
  echo "Processing $f"
  cp /data/app/$f /data/media/vrtheme/apply/data/app/
  cp /data/app/$f /data/media/vrtheme-backup/data/app/
done
echo "Backups done for data apps"
fi

# for each of the system apps needing processed 
cd /data/media/vrtheme/apply/system/app/
for f in $(ls)
do
  echo "Working on $f"
  cd /data/media/vrtheme/system/app/$f/
  /data/media/vrtheme/zip -r /data/media/vrtheme/apply/system/app/$f *
done
echo "Patched system files"

if [ "$dataapps" -eq "1" ]; then
cd /data/media/vrtheme/apply/data/app/
for f in $(ls)
do
  echo "Working on $f"
  cd /data/media/vrtheme/data/app/$f/
  /data/media/vrtheme/zip -r /data/media/vrtheme/apply/data/app/$f *

done
echo "Patched data files"
fi

if [ "$framework" -eq "1" ]; then
cd /data/media/vrtheme/apply/system/framework
for f in $(ls)
do
  echo "Working on $f"
  cd /data/media/vrtheme/system/framework/$f/
  /data/media/vrtheme/zip -r /data/media/vrtheme/apply/system/framework/$f *
done
echo "Patched framework files"
fi

# and now time to zipalign
cd /data/media/vrtheme/apply/system/app/
busybox mkdir aligned
for f in $(ls)
do
  echo "Zipaligning $f"
  /data/media/vrtheme/zipalign -f 4 $f ./aligned/$f
done

if [ "$dataapps" -eq "1" ]; then
cd /data/media/vrtheme/apply/data/app/
busybox mkdir aligned
for f in $(ls)
do
  echo "Zipaligning $f"
  /data/media/vrtheme/zipalign -f 4 $f ./aligned/$f
done
fi

if [ "$framework" -eq "1" ]; then
cd /data/media/vrtheme/apply/system/framework/
busybox mkdir aligned
for f in $(ls)
do
  echo "Zipaligning $f"
  /data/media/vrtheme/zipalign -f 4 $f ./aligned/$f
done
fi

# time to now move each new app back to its original location
cd /data/media/vrtheme/apply/system/app/aligned/
cp * /system/app/
chmod 644 /system/app/*
if [ "$dataapps" -eq "1" ]; then
cd /data/media/vrtheme/apply/data/app/aligned/
cp * /data/app/
chmod 644 /data/app/*
fi
if [ "$framework" -eq "1" ]; then
cd /data/media/vrtheme/apply/system/framework/aligned/
cp * /system/framework/
chmod 644 /system/framework/*
fi

# Do not remove the credits from this, it's called being a douche
echo "VillainTheme is done"
# we are all done now

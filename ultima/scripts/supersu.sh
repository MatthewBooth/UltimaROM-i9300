#!/sbin/sh

mkdir /system/bin/.ext
cp /system/xbin/su /system/xbin/daemonsu
cp /system/xbin/su /system/xbin/sugote	
cp /system/xbin/sh /system/xbin/sugote-mksh
cp /system/xbin/su /system/bin/.ext/.su
echo 1 > /system/etc/.installed_su_daemon

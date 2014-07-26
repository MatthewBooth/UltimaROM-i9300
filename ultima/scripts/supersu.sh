#!/sbin/sh

set_perm() {
	chown $1.$2 $4
	chown $1:$2 $4
	chmod $3 $4
}

ch_con() {
	/system/bin/toolbox chcon u:object_r:system_file:s0 $1
	chcon u:object_r:system_file:s0 $1
}

ch_con_ext() {
	/system/bin/toolbox chcon $2 $1
	chcon $2 $1
}

ABI=$(cat /default.prop | grep ro.product.cpu.abi= | dd bs=1 skip=19 count=3)
ABI2=$(cat /default.prop | grep ro.product.cpu.abi2= | dd bs=1 skip=20 count=3)

ARCH=arm
if [ "$ABI" = "x86" ]; then ARCH=x86; fi;
if [ "$ABI2" = "x86" ]; then ARCH=x86; fi;

API=$(cat /system/build.prop | grep ro.build.version.sdk= | dd bs=1 skip=21 count=2)
SUMOD=06755
SUGOTE=false
MKSH=/system/bin/mksh
if [ "$API" -eq "$API" ]; then
  if [ "$API" -gt "17" ]; then
      SUMOD=0755
	  SUGOTE=true
  fi
fi
if [ ! -f $MKSH ]; then
  MKSH=/system/bin/sh
fi

BIN=/cache/supersu/$ARCH
COM=/cache/supersu/common

chmod 0755 /cache/supersu/$ARCH/chattr
chmod 0755 /cache/supersu/$ARCH/chattr.pie
$BIN/chattr -i /system/xbin/su
$BIN/chattr.pie -i /system/xbin/su
$BIN/chattr -i /system/bin/.ext/.su
$BIN/chattr.pie -i /system/bin/.ext/.su
$BIN/chattr -i /system/xbin/daemonsu
$BIN/chattr.pie -i /system/xbin/daemonsu
$BIN/chattr -i /system/etc/install-recovery.sh
$BIN/chattr.pie -i /system/etc/install-recovery.sh

rm -f /system/bin/su
rm -f /system/xbin/su
rm -f /system/xbin/daemonsu
rm -f /system/xbin/sugote
rm -f /system/xbin/sugote-mksh
rm -f /system/bin/.ext/.su
rm -f /system/bin/install-recovery.sh
rm -f /system/etc/install-recovery.sh
rm -f /system/etc/init.d/99SuperSUDaemon
rm -f /system/etc/.installed_su_daemon
rm -f /system/app/Superuser.apk
rm -f /system/app/Superuser.odex
rm -f /system/app/SuperUser.apk
rm -f /system/app/SuperUser.odex
rm -f /system/app/superuser.apk
rm -f /system/app/superuser.odex
rm -f /system/app/Supersu.apk
rm -f /system/app/Supersu.odex
rm -f /system/app/SuperSU.apk
rm -f /system/app/SuperSU.odex
rm -f /system/app/supersu.apk
rm -f /system/app/supersu.odex
rm -f /data/dalvik-cache/*com.noshufou.android.su*
rm -f /data/dalvik-cache/*com.koushikdutta.superuser*
rm -f /data/dalvik-cache/*com.mgyun.shua.su*
rm -f /data/dalvik-cache/*Superuser.apk*
rm -f /data/dalvik-cache/*SuperUser.apk*
rm -f /data/dalvik-cache/*superuser.apk*
rm -f /data/dalvik-cache/*eu.chainfire.supersu*
rm -f /data/dalvik-cache/*Supersu.apk*
rm -f /data/dalvik-cache/*SuperSU.apk*
rm -f /data/dalvik-cache/*supersu.apk*
rm -f /data/dalvik-cache/*.oat
rm -f /data/app/com.noshufou.android.su-*
rm -f /data/app/com.koushikdutta.superuser-*
rm -f /data/app/com.mgyun.shua.su-*
rm -f /data/app/eu.chainfire.supersu-*

cp /system/app/Maps.apk /Maps.apk
cp /system/app/GMS_Maps.apk /GMS_Maps.apk
cp /system/app/YouTube.apk /YouTube.apk
rm /system/app/Maps.apk
rm /system/app/GMS_Maps.apk
rm /system/app/YouTube.apk

mkdir /system/bin/.ext
cp $BIN/su /system/xbin/daemonsu
cp $BIN/su /system/xbin/su
if ($SUGOTE); then 
  cp $BIN/su /system/xbin/sugote	
  cp $MKSH /system/xbin/sugote-mksh
fi
cp $BIN/su /system/bin/.ext/.su
cp $COM/Superuser.apk /system/app/Superuser.apk
cp $COM/install-recovery.sh /system/etc/install-recovery.sh
ln -s /system/etc/install-recovery.sh /system/bin/install-recovery.sh
cp $COM/99SuperSUDaemon /system/etc/init.d/99SuperSUDaemon
echo 1 > /system/etc/.installed_su_daemon

cp /Maps.apk /system/app/Maps.apk
cp /GMS_Maps.apk /system/app/GMS_Maps.apk
cp /YouTube.apk /system/app/YouTube.apk
rm /Maps.apk
rm /GMS_Maps.apk
rm /YouTube.apk

set_perm 0 0 0777 /system/bin/.ext
set_perm 0 0 $SUMOD /system/bin/.ext/.su
set_perm 0 0 $SUMOD /system/xbin/su
if ($SUGOTE); then 
  set_perm 0 0 0755 /system/xbin/sugote
  set_perm 0 0 0755 /system/xbin/sugote-mksh
fi
set_perm 0 0 0755 /system/xbin/daemonsu
set_perm 0 0 0755 /system/etc/install-recovery.sh
set_perm 0 0 0755 /system/etc/init.d/99SuperSUDaemon
set_perm 0 0 0644 /system/etc/.installed_su_daemon
set_perm 0 0 0644 /system/app/Superuser.apk
set_perm 0 0 0644 /system/app/Maps.apk
set_perm 0 0 0644 /system/app/GMS_Maps.apk
set_perm 0 0 0644 /system/app/YouTube.apk

ch_con /system/bin/.ext/.su
ch_con /system/xbin/su
if ($SUGOTE); then 
    ch_con_ext /system/xbin/sugote u:object_r:zygote_exec:s0
	ch_con /system/xbin/sugote-mksh
fi
ch_con /system/xbin/daemonsu
ch_con /system/etc/install-recovery.sh
ch_con /system/etc/init.d/99SuperSUDaemon
ch_con /system/etc/.installed_su_daemon
ch_con /system/app/Superuser.apk
ch_con /system/app/Maps.apk
ch_con /system/app/GMS_Maps.apk
ch_con /system/app/YouTube.apk

/system/xbin/su --install

exit 0

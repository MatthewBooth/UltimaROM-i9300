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

# "*********************"
# "SuperSU installer ZIP"
# "*********************"

# "- Mounting /system, /data and rootfs"
mount /system
mount /data
mount -o rw,remount /system
mount -o rw,remount /system /system
mount -o rw,remount /
mount -o rw,remount / /

MKSH=/system/bin/mksh
SUMOD=0755
SUGOTE=true
BIN=/system/bin

if [ ! -f $MKSH ]; then
  MKSH=/system/bin/sh
fi

# "- Placing files"
mkdir /system/bin/.ext
cp $BIN/su /system/xbin/daemonsu
cp $BIN/su /system/xbin/su
if ($SUGOTE); then 
  cp $BIN/su /system/xbin/sugote	
  cp $MKSH /system/xbin/sugote-mksh
fi
cp $BIN/su /system/bin/.ext/.su
echo 1 > /system/etc/.installed_su_daemon

# "- Setting permissions"
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

# "- Post-installation script"
/system/xbin/su --install

# "- Done !"
exit 0

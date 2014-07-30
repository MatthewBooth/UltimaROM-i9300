#!/system/bin/sh
# UltimaROM build script
AROMA=META-INF/com/google/android/aroma
CODENAME=$(cat ${AROMA}/codename.txt)
VERSION=$(cat ${AROMA}/version.txt)
FILE=UltimaROM_${VERSION}_${CODENAME}.zip

curl -T ${FILE} ftp://$1 --user $2:$3

exit 0
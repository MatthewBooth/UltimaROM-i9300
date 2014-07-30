#!/system/bin/sh
# UltimaROM FTP script
AROMA=META-INF/com/google/android/aroma
CODENAME=$(cat ${AROMA}/codename.txt)
VERSION=$(cat ${AROMA}/version.txt)
FILE=UltimaROM_${VERSION}_${CODENAME}.zip

## Usage
# sh ftp.sh ftp.example.com username password
# So, "sh ftp.sh ftp.romhut.com myu53r pa55w02d" for example

curl -T ${FILE} ftp://$1 --user $2:$3

exit 0
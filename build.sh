#!/system/bin/sh
# UltimaROM build script
AROMA=META-INF/com/google/android/aroma
CODENAME=$(cat ${AROMA}/codename.txt)
VERSION=$(cat ${AROMA}/version.txt)
FILE=UltimaROM_${VERSION}_${CODENAME}.zip

tools/7za a -up0q0r2x2y2z1w2 -mx9 -xr@tools/exclusion.txt ${FILE} META-INF system ultima data
cd overlay
../tools/7za u -mx9 -up1q1r2x2y2z1w2 -xr@../tools/exclusion.txt ../${FILE} system
cd ..
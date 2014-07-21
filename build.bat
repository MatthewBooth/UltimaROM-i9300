::UltimaROM build script
set /p CODENAME=<META-INF\com\google\android\aroma\codename.txt
set /p VERSION=<META-INF\com\google\android\aroma\version.txt
tools\7za.exe a -up0q0r2x2y2z1w2 -mx9 -xr@tools/exclusion.txt UltimaROM_%VERSION%_%CODENAME%.zip META-INF system ultima data
cd overlay
..\tools\7za.exe u -mx9 -up1q1r2x2y2z1w2 -xr@..\tools\exclusion.txt ..\UltimaROM_%VERSION%_%CODENAME%.zip system
cd ..
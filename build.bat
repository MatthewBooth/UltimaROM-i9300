::UltimaROM build script
tools\7za.exe a -up0q0r2x2y2z1w2 -mx9 -xr@tools/exclusion.txt UltimaROM_4.4.2.zip META-INF system ultima data
cd overlay
..\tools\7za.exe u -mx9 -up1q1r2x2y2z1w2 -xr@..\tools\exclusion.txt ..\UltimaROM_4.4.2.zip system
cd ..
del UltimaROM_4.4.2.zip
xcopy /E system\* temp\system\
xcopy /E META-INF\* temp\META-INF\
xcopy /E /Y overlay\system\* temp\system\
copy boot.img temp\
cd temp
..\tools\7za.exe a -mx9 ..\UltimaROM_4.4.2.zip *
cd ..
rmdir /S /Q temp
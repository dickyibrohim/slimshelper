@echo off
echo by PUJO NUGROHO
Call apache_stop.bat
Call mariadb_stop.bat
taskkill /IM cmd.exe
exit

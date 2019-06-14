@echo off
for /f "tokens=14" %%d in ('ipconfig ^| findstr IPv4') do set _IPaddr=%%d
echo Ip Server Local: %_IPaddr%
start cmd /k Call apache_start.bat 4444
start cmd /k Call mariadb_start.bat 5555
start http://%_IPaddr%
echo Untuk membantu lebih cepat menjalankan SLIM server Lokal di Windows
echo IP yang digunakan adalah yang aktif. 
echo 1. Misal Wifi mati dan LAN hidup, maka IPv4 LAN yang digunakan
echo 2. Misal LAN mati dan WIFI hidup, maka IPv4 WIFI yang digunakan
echo 3. Misal LAN hidup dan WIFI hidup, maka digunakan IPv4 Wifi
echo 4. Misal LAN mati dan WIFI mati, maka blank
echo Mohon tidak merubah pengaturan ini karena ini gratis. 
echo Thanks for DICKY IBROHIM dan PUJO NUGROHO
echo for FREE SLIMS Community
pause
exit

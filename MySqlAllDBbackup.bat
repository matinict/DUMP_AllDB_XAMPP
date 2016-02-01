 REM [at] echo off

for /f "tokens=1" %%i in ('date /t') do set DATE_DOW=%%i

for /f "tokens=2" %%i in ('date /t') do set DATE_DAY=%%i
for /f %%i in ('echo %date_day:/=-%') do set DATE_DAY=%%i
for /f %%i in ('time /t') do set DATE_TIME=%%i
for /f %%i in ('echo %date_time::=-%') do set DATE_TIME=%%i

"D:\xampp\mysql\bin\mysqldump" -u root -p --all-databases > "D:\dbbackup\mbackup_%DATE_DAY%_%DATE_TIME%.sql"

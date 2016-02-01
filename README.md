# DUMP_AllDB_XAMPP

Export and Import all MySQL databases at one time

Instruction:
01. Before use this script must be configured your xampp location directory as follows
  "D:\xampp\mysql\bin\mysqldump" -u root -p --all-databases > "D:\dbbackup\mbackup_%DATE_DAY%_%DATE_TIME%.sql"
  (You may change your Drive Directory D & backup directory)
2. Then run .bat script

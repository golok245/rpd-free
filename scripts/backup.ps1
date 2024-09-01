# Backup script example
$BackupPath = "C:\Backup"
$Date = Get-Date -Format "yyyy-MM-dd"
$BackupFile = "$BackupPath\Backup_$Date.zip"

# Perform backup
Compress-Archive -Path "C:\Data" -DestinationPath $BackupFile

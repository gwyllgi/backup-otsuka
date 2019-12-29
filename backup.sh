#Folder yang akan dibackup.
backup_files="/var/www"

#Output backup.
dest="/home"
day=$(date +%Y-%m-%d)
archive_file="otsuka-backup-$day.tar.gz"

#Print status pesan.
echo "Proses backup $backup_files ke $dest/$archive_file"
date
echo

#Backup files dengan tar.
tar czf $dest/$archive_file $backup_files

#Print status selesai
echo
echo "Backup Selesai"

#Listing files check
ls -lh $dest

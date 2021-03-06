#Kat Pinto - 10168919
#Josh Burak - 10169785
#Dhanish Chinniah - 10170731


read repfolder url username pass

#crontab -e
#00 1 * * */home/katpinto/repositoryBackup.sh > /home/katpinto/logs/backup.log 2>&1


backup="backup"
https="https://"
date=$(date +%Y%m%d%H)

tar czvf $backup$date.tar.gz $repfolder

sleep 3

echo "Backup $backup$date.tar.gz$repfolder created successfully!"

git remote set-url origin $https$url

git add $backup$date.tar.gz

sleep 3

git commit -m "Backed up file!"

sleep 3

git push https://$username:$pass@$url --all

echo "File pushed!"



#!/bin/bash

# 备份压缩
mysqldump -uusername -ppassword DatabaseName | gzip > /home/backup/DatabaseName_$(date +%Y%m%d_%H%M%S).sql.gz

# 备份
mysqldump -uusername -ppassword DatabaseName > /home/backup/DatabaseName_$(date +%Y%m%d_%H%M%S).sql

# 备份还原
mysql -u root -p Test<Test0809.sql

# 定时任务 crontab
# crontab -e
# 10 0 * * * /home/backup/bkDatabaseName.sh
# 每天零点十分执行一次
# 日志 tail -f /var/log/cron
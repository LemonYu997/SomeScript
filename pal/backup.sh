#!/bin/bash

echo "开始备份，当前时间：" $(date) >> /home/test/log-backup.txt

# 设置备份目录和日期格式
backup_dir="/home/back/$(date +\%Y\%m\%d)"
date_format=$(date +\%Y\%m\%d\%H)

# 创建备份目录
mkdir -p "$backup_dir"

# 备份并压缩目标文件夹
cd /home/steam/Steam/steamapps/common/PalServer/Pal
tar -czvf "$backup_dir/PalServerBackup_$date_format.tar.gz" Saved

# 移动至备份目录
cd "$backup_dir"

# 将压缩文件改为 zip 格式
mv "PalServerBackup_$date_format.tar.gz" "PalServerBackup_$date_format.zip"

echo "备份结束" >> /home/test/log-backup.txt
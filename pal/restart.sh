#!/bin/bash

echo "定时重启Pal服务... 当前时间为：" $(date) >> /home/test/log-restart.txt

screen -S wyyxgame -X quit
sleep 3
chmod -R 777 /home/steam/Steam
screen -S wyyxgame -d -m
screen -S wyyxgame -X stuff 'su steam\n'
screen -S wyyxgame -X stuff 'cd /home/steam/Steam/steamapps/common/PalServer\n'
screen -S wyyxgame -X stuff './PalServer.sh\n'

echo "重启成功" >> /home/test/log-restart.txt
#!/bin/sh


# daha once mymobsf olarak commitlenen imaj calistirilir.
docker run -it --name hede -p 8000:8000 mymobsf




CONTAINERID=`docker ps -a | grep hede | cut -d' ' -f1`


echo $CONTAINERID


# calisan ve uzerinde veri olan container imaj olarak commitlenir.
docker commit $CONTAINERID  mymobsf


docker images

docker rm hede


#image_version=`date +%Y%m%d%H%M`;
#echo $image_version;

git pull --rebase origin master;
#docker stop jenkinsdocker2;
#docker rm jenkinsdocker2;
docker build -t jenkinsdocker2 .;
docker images;
docker run -p 10001:80 -d --name jenkinsdocker2;
# -v ~/docker-data/house-web/appsettings.json:/app/appsettings.json -v ~/docker-data/house-web/NLogFile/:/app/NLogFile   --restart=always
docker logs jenkinsdocker2;
#ɾ��build�����в����ľ���    #docker image prune -a -f
docker rmi $(docker images -f "dangling=true" -q)
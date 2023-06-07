SAT低代码平台
python+flask

docker部署：
docker build -t testflask:1.0.0 .
docker run -d -p 80:80 -v /home/amis-admin/:/amis-admin/ --privileged=true testflask:1.0.0
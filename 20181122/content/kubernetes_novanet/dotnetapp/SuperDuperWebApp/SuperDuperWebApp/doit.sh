docker build -t trondhindenes/superduperwebapp:v1 .
docker run -p 5000:5000 -e ASPNETCORE_URLS=http://0.0.0.0:5000 trondhindenes/superduperwebapp:v1
docker push trondhindenes/superduperwebapp:v1

#Make some code changes!!
docker build -t trondhindenes/superduperwebapp:v2 .
docker push trondhindenes/superduperwebapp:v2
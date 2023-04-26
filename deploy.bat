@echo off
docker run -d --name wiki --network=funique --ip 10.0.3.8 --port 80:80 e87870823/web_auth:latest
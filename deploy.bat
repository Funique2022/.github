@echo off
docker run -d --name wiki --network=funique --ip 10.0.3.8 --port 8080:8080 e87870823/web_auth:latest
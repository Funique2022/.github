# Setup Server

[Image Website](https://hub.docker.com/r/e87870823/rtmp)

This application built at Ubuntu 18.04 LTS, If you're using windows machine, you could setup WSL 2 for docker

## Enable windows WSL

Open powershell and enter

```powershell
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

```powershell
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

## Docker Environment Setup

After above step is finished, you could start install docker now

[Install Docker](https://www.docker.com/)

After finished installation, it might tell you to restart. after restart type below command to powershell for selecting WSL versin.

```powershell
wsl --set-default-version 2
```

Then congratulations, you finishing install docker !!

## Install RTMP Nginx Server

Open Terminal and make sure docker desktop application is on

Ender command below

```powershell
docker pull e87870823/rtmp:v1.5
```

## Setup Environment Variable For Image

Basically, it looks like this

![RTMP](./../../images/RTMP_Setup.png)

> [!WARNING]
> You should enter a exist folder for container path !!

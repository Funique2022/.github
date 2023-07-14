# Docker

[官方網站](https://www.docker.com/)

容器服務框架, 能將傳統 monolithic (一體式伺服器) 升級成 (Clustering) 叢集架構. 實現多台伺服器應付多應用程式服務. 並且以容器的方式進行管理. 這意味著升級, 維護, 修改, 部屬, 測試都會單元化. 而 Docker 容器管理框架也提供許多功能, 像是網路, 共用磁碟, Swarm, API 控制等等

[Docker Swarm 伺服器](https://satellite.funique.tv:9443/)


# Windows 安裝

## 啟用 windows WSL

Powershell 並且輸入

```powershell
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

## Docker 環境設定

在第一步驟完成後，你可以開始安裝 Docker

[安裝 Docker](https://www.docker.com/)

完成安裝後 切換版本至 WSL 2

```powershell
wsl --set-default-version 2
```

恭喜，你有了 Docker 在 Windows 環境下
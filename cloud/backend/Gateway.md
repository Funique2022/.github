# Gateway

定義服務與服務之間的關係, 這邊使用了 Nginx 進行 proxy 反向代理. 

> [!WARNING]
> 使用 Nginx Proxy Manager 會使運算資源不高的實體崩潰. 在 Lightsail 上特別危險, 建議不要用. 回歸手動編寫 nginx.conf
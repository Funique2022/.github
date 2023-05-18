# FFmpeg 指南

[官方網站](https://ffmpeg.org/)

[指令自動生成器](https://alfg.dev/ffmpeg-commander/?video.codec=x265&video.preset=veryfast&video.frame_rate=30&video.size=1920)
## 常用指令

### 聲音

刪除聲音

```powershell
ffmpeg -i "input.mp4" -c:v copy -an "output.mp4”
```

擷取聲音

```powershell
ffmpeg -i input.mp4 -vn -acodec copy -preset ultrafast output.aac/m4a/wma
```    

置換聲音

```powershell
ffmpeg -i video.mp4 -i audio.wav -map 0:v -map 1:a -c:v copy -shortest output.mp4
```
    
增加聲音軌道

```powershell
ffmpeg -i file.mp4 -i audio.wav -codec copy output.mp4
```
    
刪除影片

```powershell
ffmpeg -i "input.mp4" -c:affmpeg -i file.mp4 -i audio.wav -codec copy output.mp4 copy -vn "output.mp3”
```

```powershell
ffmpeg -ss 19:44 -i $(youtube-dl -f 22 -g URL) -acodec copy -vcodec copy -t 5 Fubuki-Yabe.mp4
```
    
* ss HH:MM:SS : 起始時間
* to HH:MM:SS : 結束時間  
* t HH:MM:SS : 長度

### 剪取

### 結合


### 擷取


### 轉檔

### Https

把這串加入指令其中

```powershell
-allowed_extensions ALL -user_agent "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/82.0.4050.0 Safari/537.36”
```
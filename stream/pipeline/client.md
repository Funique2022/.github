# 客戶端 應用程式

通常是指能夠播放串流或是影片網址的播放器

## 範例

1. 瀏覽器無法直接播放 RTMP 影音串流, 必須轉碼成 HLS / DASH 的格式後播放 m3u8 連結.

2. 部分播放器並不支援 H265 或是即時串流, 或是 m3u8 額外資料.

3. 多聲音軌道無法被轉碼成 HLS 格式.

上方幾點是在設計管線時, 需要被列入考慮的部分.

## 常用框架支援格式

[Avpro Support Format](https://www.renderheads.com/content/docs/AVProVideo/articles/supportedmedia.html)

[VLC Support Format](https://wiki.videolan.org/VLC_Features_Formats/)

[HLS.js](https://github.com/video-dev/hls.js/)

支援度比較好的播放器: [PotPlayer 64bit](https://potplayer.daum.net/) 用於測試播放方便許多

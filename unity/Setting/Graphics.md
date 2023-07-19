# 畫質設定

小備註:

有沒有 OES Texture 會影響效能...

GPU 效能會影響白躁點現象

## 無 URP 

全用 Default

## 有 URP

* Depth Texture (深度貼圖, 預設是勾, 全平台 URP 配置下)
* Opaque Texture (在 Android 平台上 UI 會消失, 別勾)
* HDR (都不勾)
* MSAA: Disabled (反鋸齒, OpenXR 配 URp 有 Bug 這個設定不會被套用)
* Render Scale: 1.1
  * 1.1 (Quest 2)
* Main Light: Disabled (沒用到光就全關了背)
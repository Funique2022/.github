# 專案設定

介面在

Edit -> Project Setting -> Player

## Other Setting (主要專案配置)

* Color Space: Linear (通常都用線性顏色輸出)
* Graphics API: OpenGLES3 (使用繪圖底層)
  * 以下為常用的
    * DX11 (PC)
    * OpenGLES3 (Android)
  * 使用其他設定要得知的問題
    * DX12 (目前用下來還沒有出問題過)
    * 安桌版本不能使用 Vulkan 因為 Avpro 不支援
* Texture compression format: ASTC (圖像資源)
  * 這個項目不會影響 avpro 運作, 但是會使包出來的圖像稍微好一點, App size 也會小一點.
* Scripting Backend: IL2CPP (後台使用)
  * Mono 建置快 執行慢
  * IL2CPP 執行快 建置慢
* C++ Compiler Configuration: Release (會自動優化 CPU 指令)
* Install Location: Prefer External (其實都會裝在 Android 資料夾下... 所以好像沒差)
* Internal Access: Require (詢問存取權限, 要讀 Movie 影片或是 DCIM 圖片就要)
* Write Permission: External SDCard (寫入權限)
* Managed Stripping Level: Minimal (如果使用 Low 以上的, 可能會有無法預期的 Bug)
* Active Input Handling: Both (使用的輸入控制)
  * 用 Both 通常是為了插件著想, 有些插件還使用舊版的 Input, 有些則是用新的, 如果單選擇一個後面很容易有問題, 所以建議是留 Both

## Publish Setting (發布配置)

* Custom Main Manifest
  * Android 使用的標頭檔案, 打勾則是用自定義的, 如果有其他權限或是設定要更改, 像是 讓播放器可以播放 http 網址的設定, 這些則在寫在他給予連結的檔案中.
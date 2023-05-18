# FFmpeg 指南

FFmpeg 可以處裡影音的編碼, 解碼, 轉碼\
根據使用的版本, 功能也會有所不同

| ID  | Name                                                         | Docuemnt                                             |
| --- | ------------------------------------------------------------ | ---------------------------------------------------- |
| 1.  | [Funique FFmpeg](https://github.com/Funique2022/tool_ffmpeg) | [Quick Start](./ffmpeg/overview.md)                  |
| 2.  | [Official FFmpeg](https://ffmpeg.org/)                       | [Quick Start](https://ffmpeg.org/documentation.html) |

主要還是以官方的 FFmpeg 為主, 除非有特殊的需求才會以自定義的 FFmpeg

| Feature       | Offical FFmpeg | Custom Build FFmpeg |
| ------------- | -------------- | ------------------- |
| H.264 Encoder | ✔️              | ✔️                   |
| Hevc Encoder  | ✔️              | ✔️                   |
| H.264 RTMP    | ❌              | ✔️                   |
| Hevc RTMP     | ❌              | ✔️                   |
| HLS           | ✔️              | ❌                   |

你可以看到 支援上很雜亂.\
未來想一套全支援的方法論, 讓版本控制的管理成本降低

## 環境變數

把 FFmpeg 的資料夾加入至系統 Path 環境變數\
使用者就可以在系統的任何一個地方使用此指令
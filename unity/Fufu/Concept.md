# 概念

用比較簡單的形容就是

專案分成了 大型檔案, 組件, 外殼 這三種類別

而 Fufu 可以省略同步版本時 重複性高的步驟

### 大型檔案

影片, 模型, 等等大型檔案, 通常會放置 NAS 磁碟槽

### 組件

獨立可以匯入的 Repo, 有獨立版本控制的組件

### 外殼

跟著專案 Repo 一起的資料, 通常是一些設定, Unity 插件

### 快速開始

拉取專案

```powershell
# 查看專案ID
fufu listp
```

```powershell
# 建立專案至目前 CMD 目錄下
fufu project ID v1.0
```

同步指令

```powershell
# 組件 同步
fufu update
```

```powershell
# 大型檔案 複製下來
fufu copy
```
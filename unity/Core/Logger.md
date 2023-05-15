# Funique 紀錄

主要用在 Android 上會很方便, 因為 Android 主要都是用 ADB 產生 Log 在 Console 上\
執行完也不會留下任何紀錄, 這種方式的話. 會在 persistentdatapath 上留下 log.txt 的文字檔案

## 註冊紀錄系統

```csharp
void Start(){
    FuniqueLogger.Init();
    FuniqueLogger.Log("This will log", "Main");
}
```

可以選擇紀錄的方法論

```csharp
void Start(){
    // This will only use build unity log, not output the message to file
    FuniqueLogger.Init(LoggerApply.Unity);
    FuniqueLogger.Log("This will log", "Main");
}
```

## 使用紀錄系統

```csharp
void Start(){
    FuniqueLogger.Init();
    FuniqueLogger.Log("Log", "My Manager");
    FuniqueLogger.WarningLog("Warning", "My Manager");
    FuniqueLogger.ErrorLog("Warning", "My Manager");
}
```
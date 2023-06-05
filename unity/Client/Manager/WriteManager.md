# 編寫管理員

## 底層管理員

這一層的管理員只能存取依賴性物件, 但是無法存取整合層的邏輯\
主要的用途是底層的邏輯

```csharp
// IData 為配置的資料結構
// 加上 System.Serializable 是為了能在 Editor 被看到
[System.Serializable]
public struct IConfig {
    [SerializeField] public int MyIntValue;
    [SerializeField] public string MyStringValue;
}

// 繼承你的管理員至 IManagerBase
public class MyManagerBase : ManagerBase<IConfig> {
}
```

## 整合層管理員 (選擇性)

這一層的腳本通常會放在 Scripts/Samples/(整合資源名稱) 內\
作為最上層的統整資源, 可以存取其他的管理員腳本

```csharp
// 繼承你的底層管理員
public class MyManager : MyManagerBase {
}

// 存取方法為
public class myclass {
    // 之後則可以透過屬性進行存取
    MyManager _myManager => EntryBase.Instance.GetModule<MyManager>();

    // 建議進行 Cache 優化
    // 避免每次都進行搜尋而拖垮效能
    MyManager myManager {
        get
        {
            if(_myManager == null) _myManager = EntryBase.Instance.GetModule<MyManager>();
            return _myManager;
        }
    }
    MyManager _myManager;
}
```


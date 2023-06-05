# 匯入至場景管理員

如果你還對定義的管理員有問題請至 [自定義的管理員](./WriteManager.md)

## 置入你的 Main

如果你很滿意現在的 Main Class, 可以直接繼承

```csharp

public class MyMain : Main{

    // 在 Editor 會出現這個配置給你調整
    [SerializeField] IConfig MyConfig;

    // 管理員實體
    MyManager _MyManager;

    // 這個是讓其他元件 Casting 的屬性
    // 可以用 Interface 或是 Class
    // 在這個範例使用的是 Class
    public virtual MyManager _MyManagerModule => _MyManager;

    // 接著就是把管理員的初始化加進來
    protected override void InitManager()
    {
        if (_MyManager != null) _MyManager.RegisterConfig(MyConfig);
        base.InitManager();
    }
}

```
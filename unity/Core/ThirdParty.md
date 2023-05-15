# 第三方應用程式

有時候程式需要存取第三方應用程式, 透過一個代理類別來管理應用程式避免錯誤.

首先, 我們先繼承代理人物件

```csharp
public class Demo : ThirdPartyApplication {
    // 在 Debug 上看到的標籤
    protected override string => "WorkerName";

    public Demo() : base()
    {
        MainProcess.StartInfo.FileName = "cmd.exe";
        MainProcess.StartInfo.WorkingDirectory = "C:/work_directory";
        // For access standard IO
        MainProcess.StartInfo.RedirectStandardError = true;
        MainProcess.StartInfo.RedirectStandardInput = true;
        MainProcess.StartInfo.RedirectStandardOutput = true;
        MainProcess.StartInfo.CreateNoWindow = true;
        MainProcess.StartInfo.UseShellExecute = false;
    }
}
```

然後我們就可以在主要類別上生成此 代理物件\
藉此來控制應用程式

```csharp
public class component : MonoBehaviour{

    Demo demo;

    void Start(){
        // Prepare the process start info
        demo = new Demo();
        // Actually start the process
        demo.Run();
    }

    void OnDestroy(){
        // Do not forget the release the resource after we leave
        // Otherwise this will causing buggy beheviour
        demo.Dispose();
    }
}
```


# Third Party Application

There are times when we want to open the third-party application and access application pointer by C# script,
In order to achieve that, we provide a simple base class for this kind of purposes.

First, inherit our custom third-party application handler

```csharp
public class Demo : ThirdPartyApplication {
    // This will effect debug label
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

Then we can just use it as template for the application we want to target

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
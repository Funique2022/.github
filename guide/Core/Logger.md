# Funique Logger

## Register logger system

```csharp
void Start(){
    FuniqueLogger.Init();
    FuniqueLogger.Log("This will log", "Main");
}
```

You can select the log mode

```csharp
void Start(){
    // This will only use build unity log, not output the message to file
    FuniqueLogger.Init(LoggerApply.Unity);
    FuniqueLogger.Log("This will log", "Main");
}
```

## Use logger system

for the usage, check detail here

[API Reference](../../api/Funique.ILogger.html)
# 列舉迴圈

會試著迴圈一般列舉, 不支援不規格 Index 列舉

簡單的範例

```csharp
enum SomeEnum{
    None,
    First,
    Second,
    Thrid
}
```

建立一個迴圈實體

```csharp
EnumCycle<SomeEnum> sample = new EnumCycle<SomeEnum>();
int current = 0;
```

```csharp
void Start(){
    for(int i = 0; i < 10; i++){
        current = sample.Next(current);
        Debug.Log(current);
    }
    // output: 0
    // output: 1
    // output: 2
    // output: 3
    // output: 0
    // output: 1
    // output: 2
    // output: 3
    // output: 0
    // output: 1
}
```
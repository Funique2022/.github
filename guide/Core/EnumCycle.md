# Enum Cycle

It will loop base on the index it got, This does not support unorder enum.

Here we define a simple enum 

```csharp
enum SomeEnum{
    None,
    First,
    Second,
    Thrid
}
```

Then we create a cycle by the enum type

```csharp
EnumCycle<SomeEnum> sample = new EnumCycle<SomeEnum>();
int current = 0;
```

After that we can use it for cycle

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

For API detail, check here

[API Reference](../../api/Funique.EnumCycle-1.html)
# Counter

Core library provide a simple timer

```csharp
Counter counter = new Counter(5f, true);
```

5f means that the length of the time we want to set as target\
true will tell the counter auto reset and start the next cycle

Put this line of code in update function, simply activate the timer

```csharp
private void Update(){
    counter.Update(Time.deltaTime);
}
```

For API detail, check here

[API Reference](../../api/Funique.Counter.html)
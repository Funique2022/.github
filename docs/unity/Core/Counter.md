# 計數器

新增實體

```csharp
Counter counter = new Counter(5f, true);
```

5f 代表時間長度\
後面的布林值代表自動重置並進入下一個迴圈

放入這一段至更新函式

```csharp
private void Update(){
    counter.Update(Time.deltaTime);
}
```

你也可以委派事件

```csharp
private void Start(){
    counter.OnTimeUp += CallMe;
}

private void CallMe(){
    Debug.Log("Timer Is Up !!");
}
```
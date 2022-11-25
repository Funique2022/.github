# Coroutine Helper

Help thoes class which need access unity monobehaviour coroutine feature.\
Don't forget add CoroutineHelper to any gameobject in the scene, it will assign to static instance member.

![Component](../../images/coroutine_helper.png)

```csharp
class SampleA {
    void Use(){
        Coroutine coroutine = CoroutineHelper.Instance.Run(Go);
    }

    IEnumerator Go(){
        yield return new WaitForEndOfFrame();
    }
}
```

For API detail, check here

[API Reference](../../api/Funique.CoroutineHelper.html)
# Cinema Server Logic Qucik Start

Create a class inherit cinema server manager

```csharp
public class CinemaServer : CinemaManagerServerUtility {

}
```


```csharp
public class Main : MonoBehaviour {
    // Explose the config to editor level, provide desginer to tweek the value
    [SerializeField] CinemaManagerServerData data;
    // Our manager instance
    CinemaServer cinema;

    void Start(){
        // Create cinema server manager process
        cinema = new CinemaServer();
        cinema.RegisterConfig(data);
    }
}
```

For API detail, check here

[API Reference](../../../api/Funique.Cinema.ICinemaServerUtility.html)
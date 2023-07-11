# 風格指南

請符合以下的風格, 使得未來檢視或是修改變得簡單許多

## C# 專案註釋 (Optional)

下方的程式碼註釋能使其他人在 Review 時快速掌握函式的用途

[Visual Studio 注釋指南](https://learn.microsoft.com/en-us/visualstudio/ide/reference/generate-xml-documentation-comments?view=vs-2022)

```csharp
/// <summary>
/// Extensions: Unclassified <br />
/// ------------------------------------------------ <br />
/// 擴充: 未分類
/// </summary>
public static class UtilityExtensions{
    
}
```

## Repository README

可以在 Repo 的 Readme 頁面寫下組件的依賴性跟大綱敘述

![REPO](../images/dependencies.png)
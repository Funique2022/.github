# 風格指南

請符合以下的風格, 使得未來檢視或是修改變得簡單許多

## 微小的 Commit

在每個小的更改都進行 Commit, 豐富的紀錄較容易追朔以及分析

## 分支命名

分支名稱請符合下方命名方法

* v1.0.1 -> Debug 分支
* v1.0 -> 合併至 v1.0 主分支

## 標籤命名

標籤名稱請符合下方命名方法

* v1.0-release -> 1.0 最新 debugged 版本
* v1.1-release -> 1.1 最新 debugged 版本

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
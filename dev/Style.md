# 風格指南

Whether you're trying to contribute the code or applies the custom modify version to your own project. Please follows the rules below, in order to make review easier.

## 微小的 Commit

We recommend that make each commit as small as possible, it'll be easier review the code change this way. and descript what change, what feature do you add, what kind of bug did you fixed.

## 分支命名

The branch naming should follow below

* v1.0.1 -> The alpha, debuging
* v1.1 -> The merge version of 1.1

We should use tag to mark the beta version of the branch

## 標籤命名

The Tag naming should follow below

* v1.0-release -> 1.0 latest debugged version
* v1.1-release -> 1.1 latest debugged version

## C# 專案註釋

The below example will make it much more clear what this class, function, struct is doing. And it also make visual studio tooltip much more readable

[More Style](https://learn.microsoft.com/en-us/visualstudio/ide/reference/generate-xml-documentation-comments?view=vs-2022)

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
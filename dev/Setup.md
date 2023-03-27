# Setup 

## Third-Party Tool Helper
[Git](https://git-scm.com/downloads)\
[Github Desktop](https://desktop.github.com/)\
[Funique Hub](https://github.com/Funique2022/tool_unity_module_hub/releases)


## Dev Project Repository

Each intergration project has its own repository with git sub modules attached to it,
You could clone it in order to contribute.

## Project Architecture
![Architecture](./../images/ApplicationArchitecture.png)

Here is the main project architeture

The integration (project main logic code) will store at `/Assets/Scripts`\
The funique modules (including core module) will store at `/Assets/FuniquePlugin/[Module Name]`\
Large resources, media files (ignore elements) will store at `/Assets/FuniqueAssets`

## After Clone
After user clone the project, the remain problem is loading the submodule files.\
User can open command prompt at root of the unity project directory\
And type in:

```batch
git submodule update --init --remote --recursive
```

--init\
Trying to initialize the submodule directory

--remote\
Update to the latest commit to the select branch

--recursive\
Read .submodule file and Iterate over each submodule element

## Delete Submodule
When submodule is no need, and require to remove it\
You could run this command to it

```batch
git rm -r --cached [submodule folder]
```

## Change Submodule Select Branch
When you trying to upgrade version\
You could run this command to it

```batch
git submodule set-branch --branch [branch label] [submodule folder]
git submodule update [submodule folder]
```

## Dependencies
Each funique unity module should have official readme file that specified that what kinds of modules it require to works.\
It will specified the module name with hyperlink and version requirement.

![example](../images/dependencies.png)
# Maintainer

All the unity modules and integration package are using NPM to host it, We use unity package manager to get funique package.

The code under Github organization repository is for alpha, beta development. After we finihs debugging and testing, Maintainer should push the latest version to NPM.

The issue is, Unity package manager does not support NPM organization scope for search package, So if we want to add a new maintainer, we have to manually add to package one by one.

[More Package Manager Detail](https://docs.unity3d.com/Manual/CustomPackages.html)

## Install Node.js

[Download](https://nodejs.org/en)

Node.js will install the necessary tool for you to publish npm package

## Login NPM

Sign up an account in npm

[NPM Website](https://www.npmjs.com/)

And enter command in the terminal

```powershell
npm login
```

## Writing package.json

Here is a example package.json

Create a file in the root of your root folder

```json
{
  "name": "tw.funique.demo",
  "displayName": "Demo Module",
  "description": "This is a great mode project",
  "version": "1.0.0",
  "repository": "<Link to your github repository>",
  "unity": "2021.3",
  "documentationUrl": "<Link your documentation website>",
  "license": "MIT",
  "author": "<Enter your name>",
  "keywords":[
	"demo",
	"funique",
	"xr",
	"vr"
  ],
  "dependencies": {
	"com.unity.xr.interaction.toolkit": "2.2.0",
    "com.unity.xr.management": "4.3.3",
    "tw.funique.core": "1.0.3",
	"tw.funique.client": "1.0.1"
  },
  "samples": [
	{
		"displayName": "Fashion Scene",
		"description": "A scene with beautiful skybox and particle",
		"path": "Samples/FashionWeek"
	},
	{
		"displayName": "Dark Scene",
		"description": "A scene with nothing in it",
		"path": "Samples/DarkScene"
	}
  ]
}
```

## Publish

Open a ternimal in your root workspace folder

Make sure you have already login npm

Enter command in your ternimal

```powershell
npm publish
```

If you see last line below, This mean you have successfully publish the package, you can go back unity package manager window to refresh

![publish](./../../.github/images/npm_publish.png)

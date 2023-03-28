a   E  a   v   #  @  �  �  '  B  m  �    /  8  Q  $  <  H  V  b  ~  &  <     v   FileAndType�   #  �{"baseDir":"C:/Users/funique/Documents/GitHub/github_head/.github","file":"unity/Client/Cinema/QuickStart.md","type":"article","sourceDir":"","destinationDir":""}   @  OriginalFileAndType�   �  �{"baseDir":"C:/Users/funique/Documents/GitHub/github_head/.github","file":"unity/Client/Cinema/QuickStart.md","type":"article","sourceDir":"","destinationDir":""}   �  Key-   '  #~/unity/Client/Cinema/QuickStart.md   B  LocalPathFromRoot+   m  !unity/Client/Cinema/QuickStart.md   �  LinkToFiles     �  �  �  $   �  ~/images/Cinema_Config.png(   �  ~/images/MediaPlayerMaster.png8     .~/api/Funique.Cinema.ICinemaClientUtility.html   /  
LinkToUids	   8     Q  FileLinkSources�  $  �{"~/images/Cinema_Config.png":[{"Target":"~/images/Cinema_Config.png","SourceFile":"unity/Client/Cinema/QuickStart.md","LineNumber":9}],"~/images/MediaPlayerMaster.png":[{"Target":"~/images/MediaPlayerMaster.png","SourceFile":"unity/Client/Cinema/QuickStart.md","LineNumber":15}],"~/api/Funique.Cinema.ICinemaClientUtility.html":[{"Target":"~/api/Funique.Cinema.ICinemaClientUtility.html","SourceFile":"unity/Client/Cinema/QuickStart.md","LineNumber":97}]}   <  UidLinkSources   H  {}   V  Uids   b  []   ~  ManifestProperties�   &  �{"rawTitle":"<h1 id=\"cinema-logic-qucik-start\" sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"1\">Cinema Logic Qucik Start</h1>"}   <  DocumentType	   E     I$  {"$type":"System.Collections.Generic.Dictionary`2[[System.String, mscorlib],[System.Object, mscorlib]], mscorlib","conceptual":"\n<p sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"3\">Create a class inherit cinema server manager</p>\n<h2 id=\"configuration\" sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"5\">Configuration</h2>\n<p sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"7\">check cinema data section</p>\n<p sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"9\"><img src=\"~/images/Cinema_Config.png\" sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"9\" alt=\"Cinema_Config\"></p>\n<ul sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"11\">\n<li sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"11\">Media Control -&gt; Targeting the media player ui controller</li>\n</ul>\n<p sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"13\">If you follow the component you will see a much more detail UI controller component. We recommand you not touch this component, unless you know what you are doing.</p>\n<p sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"15\"><img src=\"~/images/MediaPlayerMaster.png\" sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"15\" alt=\"Cinema_Config\"></p>\n<ul sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"17\">\n<li sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"17\">Audio Source -&gt; AvPro audio output</li>\n<li sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"18\">FLive Compute Shader for decoding (deprecated)</li>\n<li sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"19\">VideoBtn -&gt; Menu use element button (deprecated)</li>\n<li sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"20\">Default_Media Player -&gt; Assign this index of media player by default</li>\n<li sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"21\">Default_Stereo Mode -&gt; Assign this stereo when we have no idea what stereo the source is</li>\n<li sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"22\">Options -&gt; AvPro Media Player list\n<ul sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"23\">\n<li sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"23\">Name -&gt; Just for name, no effect for code</li>\n<li sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"24\">Meta -&gt; Hmmm,</li>\n<li sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"25\">Support_Swap -&gt; Support smooth transition, It must assign second media player</li>\n<li sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"26\">Target -&gt; AvPro media player instance</li>\n</ul>\n</li>\n<li sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"27\">Stereo Config -&gt; The UV layout and material manipulate config\n<ul sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"28\">\n<li sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"28\">Mode -&gt; The use mode</li>\n</ul>\n</li>\n</ul>\n<h2 id=\"writing-your-own-implementation\" sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"30\">Writing Your Own Implementation</h2>\n<pre><code class=\"lang-csharp\" sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"32\">// Writing your own manager\npublic class CinemaClient : CinemaManagerClientUtility {\n\n}\n</code></pre>\n<p sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"39\">In the main component, you could modify the class or</p>\n<pre><code class=\"lang-csharp\" sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"41\">public class Main : MonoBehaviour {\n    // Explose the config to editor level, provide desginer to tweek the value\n    [SerializeField] CinemaManagerClientData data;\n    // Our manager instance\n    CinemaClient cinema;\n\n    void Start(){\n        // Create cinema server manager process\n        cinema = new CinemaClient();\n        cinema.RegisterConfig(data);\n    }\n\n    void Update(){\n        cinema.FrameUpdate();\n    }\n}\n</code></pre>\n<p sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"60\">You could override a main</p>\n<pre><code class=\"lang-csharp\" sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"62\">public class Main_Second : Main {\n    // Explose the config to editor level, provide desginer to tweek the value\n    [SerializeField] CinemaManagerClientData data;\n\n    CinemaClient _CinemaClient;\n    public override ICinema CinemaManager =&gt; _CustomCinemaManager;\n\n    // You can override the default init manager behaviour\n    protected override void InitManager(){\n      _CinemaClient = new CinemaClient(); // Switch default cinema to ours\n      _CinemaClient_.RegisterConfig(CinemaData);\n      _XRManager.RegisterConfig(XRData);\n      _UIManager.RegisterConfig(UIData);\n      _VerifyManager.RegisterConfig(VerifyData);\n      _FileManager.RegisterConfig(FileData);\n      _AndroidManager.RegisterConfig(AndroidData);\n\n      _VerifyManager.OnLogin.AddListener(() =&gt;\n      {\n          _NetworkManager.Initialization();\n      });\n\n      Main.Managers.ToList().ForEach(x =&gt;\n      {\n          if (x.GetType() != typeof(NetworkManager))\n              x.Initialization();\n      });\n      (NetworkManager as NetworkManager).Initialization();\n    }\n}\n</code></pre>\n<p sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"95\">For API detail, check here</p>\n<p sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"97\"><a href=\"../../../api/Funique.Cinema.ICinemaClientUtility.html\" sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"97\">API Reference</a></p>\n","type":"Conceptual","source":{"$type":"Microsoft.DocAsCode.DataContracts.Common.SourceDetail, Microsoft.DocAsCode.DataContracts.Common","remote":{"$type":"Microsoft.DocAsCode.Common.Git.GitDetail, Microsoft.DocAsCode.Common","path":"unity/Client/Cinema/QuickStart.md","branch":"docfx","repo":"https://github.com/Funique2022/.github.git"},"startLine":0,"endLine":0,"isExternal":false},"path":"unity/Client/Cinema/QuickStart.md","documentation":{"$type":"Microsoft.DocAsCode.DataContracts.Common.SourceDetail, Microsoft.DocAsCode.DataContracts.Common","remote":{"$type":"Microsoft.DocAsCode.Common.Git.GitDetail, Microsoft.DocAsCode.Common","path":"unity/Client/Cinema/QuickStart.md","branch":"docfx","repo":"https://github.com/Funique2022/.github.git"},"startLine":0,"endLine":0,"isExternal":false},"_enableSearch":true,"_appFooter":"Funique Inc.<br/>Generated by <b>DocFX</b>","_disableSideFilter":true,"_disableAffix":true,"_docfxVersion":"2.58.9.0","_appName":"Funique","_gitContribute":{"$type":"System.Collections.Generic.Dictionary`2[[System.String, mscorlib],[System.Object, mscorlib]], mscorlib","repo":"https://github.com/Funique2022/.github"},"_appTitle":"Funique Documentation","_systemKeys":{"$type":"System.String[], mscorlib","$values":["conceptual","type","source","path","documentation","title","rawTitle","wordCount"]},"rawTitle":"<h1 id=\"cinema-logic-qucik-start\" sourcefile=\"unity/Client/Cinema/QuickStart.md\" sourcestartlinenumber=\"1\">Cinema Logic Qucik Start</h1>","title":"Cinema Logic Qucik Start"}�   �$  {"$type":"System.Collections.Generic.Dictionary`2[[System.String, mscorlib],[System.Object, mscorlib]], mscorlib","IsUserDefinedTitle":false,"XrefSpec":null}	   �$   
<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Class ListExtensions
   | Funique Documentation </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="Class ListExtensions
   | Funique Documentation ">
    <meta name="generator" content="docfx 2.58.9.0">
    
    <link rel="shortcut icon" href="../favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/10.1.1/styles/night-owl.min.css">
    <link rel="stylesheet" href="../styles/colors.css">
    <link rel="stylesheet" href="../styles/discord.css">
    <link rel="stylesheet" href="../styles/main.css">
    <meta property="docfx:navrel" content="../toc.html">
    <meta property="docfx:tocrel" content="toc.html">
    
    <meta property="docfx:rel" content="../">
    
  </head>

  <body>
        <div class="top-navbar">

            <a href="javascript:void(0);" class="burger-icon" onclick="toggleMenu()">
                <svg name="Hamburger" style="vertical-align: middle;" width="24" height="24" viewbox="0 0 24 24"><path fill="currentColor" fill-rule="evenodd" clip-rule="evenodd" d="M20 6H4V9H20V6ZM4 10.999H20V13.999H4V10.999ZM4 15.999H20V18.999H4V15.999Z"></path></svg>
            </a>

            
            <a class="brand" href="../index.html">
              <img src="../logo.svg" alt="Funique" class="logomark">
              <span class="brand-title">Funique</span>
            </a>
        </div>

        <div class="body-content">

            <div id="blackout" class="blackout" onclick="toggleMenu()"></div>

            <nav id="sidebar" role="navigation">

                <div class="sidebar">
                    
                    
                    
                    
                    <div>
                      
                      <a class="brand" href="../index.html">
                        <img src="../logo.svg" alt="Funique" class="logomark">
                        <span class="brand-title">Funique</span>
                      </a>
                      <div id="navbar">
                    
                      </div>
                    
                    </div>
                    

                    <div class="sidebar-item-separator"></div>

                        
                        <div id="sidetoggle">
                          <div id="sidetoc"></div>
                        </div>

                </div>

                <div class="footer">
                  Funique Inc.<br>Generated by <b>DocFX</b>
                  
                </div>
            </nav>

            <main class="main-panel">

                <div role="main" class="hide-when-search">

                        
                        <div class="subnav navbar navbar-default">
                          <div class="container hide-when-search" id="breadcrumb">
                            <ul class="breadcrumb">
                              <li></li>
                            </ul>
                          </div>
                        </div>

                    <article class="content wrap" id="_content" data-uid="Funique.ListExtensions">
  
  
  <h1 id="Funique_ListExtensions" data-uid="Funique.ListExtensions" class="text-break">Class ListExtensions
  </h1>
  <div class="markdown level0 summary"><p sourcefile="api/Funique.ListExtensions.yml" sourcestartlinenumber="2">Extensions: List <br>
------------------------------------------------ <br>
擴充: List</p>
</div>
  <div class="markdown level0 conceptual"></div>
  <div class="inheritance">
    <h5>Inheritance</h5>
    <div class="level0"><span class="xref">System.Object</span></div>
    <div class="level1"><span class="xref">ListExtensions</span></div>
  </div>
  <h6><strong>Namespace</strong>: <a class="xref" href="Funique.html">Funique</a></h6>
  <h6><strong>Assembly</strong>: Funique.Core.dll</h6>
  <h5 id="Funique_ListExtensions_syntax">Syntax</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static class ListExtensions</code></pre>
  </div>
  <h3 id="methods">Methods
  </h3>
  <span class="small pull-right mobile-hide">
    <span class="divider">|</span>
    <a href="https://github.com/Funique2022/.github/new/v1.0/apiSpec/new?filename=Funique_ListExtensions_MoveListItem__1_System_Collections_Generic_IList___0__System_Int32_System_Int32_.md&amp;value=---%0Auid%3A%20Funique.ListExtensions.MoveListItem%60%601(System.Collections.Generic.IList%7B%60%600%7D%2CSystem.Int32%2CSystem.Int32)%0Asummary%3A%20'*You%20can%20override%20summary%20for%20the%20API%20here%20using%20*MARKDOWN*%20syntax'%0A---%0A%0A*Please%20type%20below%20more%20information%20about%20this%20API%3A*%0A%0A">Improve this Doc</a>
  </span>
  <span class="small pull-right mobile-hide">
    <a href="https://github.com/Funique2022/funique_core/blob/v1.0/Extension/ListExtensions.cs/#L12">View Source</a>
  </span>
  <a id="Funique_ListExtensions_MoveListItem_" data-uid="Funique.ListExtensions.MoveListItem*"></a>
  <h4 id="Funique_ListExtensions_MoveListItem__1_System_Collections_Generic_IList___0__System_Int32_System_Int32_" data-uid="Funique.ListExtensions.MoveListItem``1(System.Collections.Generic.IList{``0},System.Int32,System.Int32)">MoveListItem&lt;T&gt;(IList&lt;T&gt;, Int32, Int32)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static IList&lt;T&gt; MoveListItem&lt;T&gt;(this IList&lt;T&gt; list, int indexA, int indexB)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Collections.Generic.IList</span>&lt;T&gt;</td>
        <td><span class="parametername">list</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Int32</span></td>
        <td><span class="parametername">indexA</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Int32</span></td>
        <td><span class="parametername">indexB</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Collections.Generic.IList</span>&lt;T&gt;</td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="typeParameters">Type Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="parametername">T</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
</article>
              
                </div>
            </main>
        </div>

        
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/10.1.1/highlight.min.js"></script>
<script type="text/javascript" src="../styles/jquery.twbsPagination.js"></script>
<script type="text/javascript" src="../styles/url.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/anchor-js/anchor.min.js"></script>
<script type="text/javascript" src="../styles/docfx.js"></script>
<script type="text/javascript" src="../styles/main.js"></script>

    </body>

</html>

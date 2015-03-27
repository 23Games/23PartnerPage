<html>
<head>
	<title>{owner}</title>
	<script type="text/javascript" src="{tpl}demo/libs/jq.js"></script>
	<link rel="Stylesheet" type="text/css" href="{tpl}demo/libs/xo.css" />

	<script type="text/javascript" src="{tpl}parallax.min.js"></script>
	<script type="text/javascript" src="{tpl}demo/index.js"></script>
	<script type="text/javascript" src="{tpl}demo/examples.js"></script>
	<link rel="Stylesheet" type="text/css" href="{tpl}demo/index.css" />

	<script type="text/javascript">

	  var _gaq = _gaq || [];
	  _gaq.push(['_setAccount', 'UA-34546066-1']);
	  _gaq.push(['_trackPageview']);

	  (function() {
	    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	  })();

	</script>
</head>
<body class="background">

	<div class="container">

		<div id="index" class="leaguegothic white page">
			<div id="titlebox" class="f2 lghtgrey">
				<div class="f5 white">Parallax.js</div>
				The swankiest Javascript framework for elegantly sliding pages and parallaxing backgrounds. It'll make your monocle drop.
				<iframe src="http://ghbtns.com/github-btn.html?user=stolksdorf&repo=parallaxjs&type=watch&count=true&size=large" allowtransparency="true" frameborder="0" scrolling="0" width="155px" height="30px"></iframe>
				<iframe src="http://ghbtns.com/github-btn.html?user=stolksdorf&repo=parallaxjs&type=fork&count=true&size=large" allowtransparency="true" frameborder="0" scrolling="0" width="150px" height="30px"></iframe>
				<iframe src="http://ghbtns.com/github-btn.html?user=stolksdorf&repo=parallaxjs&type=follow&count=true&size=large" allowtransparency="true" frameborder="0" scrolling="0" width="195px" height="30px"></iframe>
			</div>
		</div>

		<div id="me" class="leaguegothic white page f2">

			<div class="w960 center" style="margin-top:50px;">

			<div class="right"><img src="{tpl}demo/assets/Classy Skaught.jpg" style="width:200px;"><br><span class="calibri f0">Me enjoying some fine chocolate milk.</span></div>

			<h1>Hey, I'm Scott</h1>

			I like to hit the keyboard and make nifty things.<br>
			I do hope you fine chaps enjoy Parallax.js as much as I do. <br> <br>
			If you have any questions, compliments, or just built something super cool with it, I'd love to hear about it!<br>
			Contact: <span style="color:#AE0000">scott.tolksdorf@gmail.com</span>
			</div>
		</div>

		<div id="sandbox" class="leaguegothic white page">
			<a class="noanchor" href="https://github.com/stolksdorf/Parallaxjs"><div id="logo" class="f2">PARALLAX.JS</div></a>

			<div class="f0 center w750 pad">

				<div class="f3">Examples</div>

				<div id="fromLast" class="clickable f1">Returns you to the last page you were on</div>
				<div id="fromCurrent" class="clickable f1">Alert from the current page</div>
				<div id="fromRight" class="clickable f1">From the right slow</div>
				<div id="fromTop" class="clickable f1">From the top with linear easing</div>
				<div id="fromLeft" class="clickable f1">From the left with increased parallax</div>
				<div id="fromBottom" class="clickable f1">From the bottom with an onload function</div>

				<pre id = "codebox" class="black">Hover to see code.
Click to see it in action!</pre>

			</div>

		</div>

		<div id="boo" class="leaguegothic white page clickable">
			<div class="center w400 " style="margin-top:20%;">
				<div class="lh0" style="font-size:300px;">BOO!</div>
				<div style="font-size:47px">Click anywhere to head back.</div>
			</div>
		</div>

		<div id="features" class="leaguegothic white page">
			<a class="noanchor" href="https://github.com/stolksdorf/Parallaxjs"><div id="logo" class="f2 left">PARALLAX.JS</div></a>

			<div id="content" class="black whitebg calibri f0 center w750 pad">
				<h1>What is Parallax.js?</h1>
				<p>
					Parallax.js is a nifty Javascript framework that allows you to easily add sliding page trasitions and parallaxing backgrounds to any project. <br>
					Very light weight, very cool. Just like fezes.
				</p>

				<h1>Adding Pages</h1>
				<p>
					Add accepts either a name and an element, or just an element.
					With the latter Parallax.js will try to use the element's Id as the name.
					Pages can be accessed using their name as a property on the Parallax.js object.
				<pre class="jscode">parallax.add("foo", $("#page1"))
	.add($("#bar"));

parallax.foo; //<- woah! they're properties now!
parallax.bar;
</pre></p>

				<h1>Backgrounds and Parallax Scaling</h1>
				<p>
					To get a nifty parallaxing background, just set a jQuery element to be Parallax.js's background. <br>
					For best results, make sure that the element's background image is a repeating image. <br>
					You can also control the scaling, or how much the background moves in relation to pages.
				<pre class="jscode">parallax.background = $("body");

parallax.scaling = 0.4; //background moves 40% with the pages
</pre></p>

			<h1>Speed and Easing</h1>
				<p>
					Some like it fast, some like it slow. Some like to swing and others like to get... umm linear? <br>
					Whatever you fancy, Parallax.js has you covered.
				<pre class="jscode">parallax.speed = 1200; //In milliseconds of course!

parallax.easing = 'linear';
</pre></p>
			<h1>Movement</h1>
				<p>
					The meat and potatoes. Invoking these will move that page in from that side.
				<pre class="jscode">parallax.bar.left(); //Bar slides in from the left
parallax.foo.top(); //bringing back foo from the top

parallax.bar.bottom(IAmBack()); //We got callbacks too ;)

function IAmBack(){
	alert("I'm back foo!");
}
</pre></p>

			<h1>Show and Hide</h1>
				<p>
					Sometimes we don't need the fanciness. Show and hide simply bring pages to focus instantly, or hides them. <br>

				<pre class="jscode">//All pages start out hidden,
//remember to show your initial page!
parallax.foo.show();

parallax.bar.hide(); //Bar is being a tad shy
</pre></p>

			<h1>Last and Current</h1>
				<p>
					Parallax.js has two special pages that it fills in for you. You can use that just like regular pages.


				<pre class="jscode">parallax.bar.left()
parallax.current.ackbar(); //Bar thinks it's a trap!

parallax.foo.top();
parallax.current.ackbar(); //Foo now thinks it's a trap
parallax.last.right(); //Bar slides in from the right
</pre></p>

		<h1>OnLoad and Preload</h1>
				<p>
					Sometimes your page just has to run some code when it hits the big screen. We understand. Preload runs before the page animation, onload runs after.

				<pre class="jscode">parallax.bar.onload = function(){
			alert( "sweetest function eva!");
		};
parallax.bar.left(); //Fires that function!
parallax.bar.show(); //Also fires it, how cool!

//parallax itself has it's own preload and onload functions
parallax.preload = function(){
	//these get run on -every- page,
	//in addition to the page's onload/preload functions
	alert("Super annoying alert");
};

</pre></p>

<h1>Protips!</h1>
				<p>
				<pre class="jscode">//Remember parallax can be aliased!
p = parallax;

//Using arrow key navigation is super cool
//most users find it very intuitive
$(document).keydown(function(e){
	if (e.keyCode == 37) { //this is the left key,
		p.bar.left();
	}
}); //check out the code of this demo, it has arrow key navigation!
//For reference; 38 - top, 39 - right, 40 - bottom

//Before using .last either check to see if it's null
if(typeof p.last === 'undefined'){
	//handle it here
}
//or set it before hand
p.last = p.foo;

//Movement callbacks and .onload look like they do the same thing
//But they don't!
p.bar.onload = herp();
p.bar.left(derp()); //both herp and derp get run
p.current.show() //only herp gets run



</pre></p>

			</div>


		</div>

	</div>


	<div id="leftControl" class="control">
		<img id="leftArrow" class="arrow left" style="width:60px" src="{tpl}demo/assets/arrowleft2.png"></img>
		<div id="leftText" class="dirText" style="float:right"> Test</div>
	</div>

	<div id="rightControl" class="control">
		<img id="rightArrow" class="arrow right" style="width:60px" src="{tpl}demo/assets/arrowright2.png"></img>
		<div id="rightText" class="dirText" style="float:left"> Test</div>
	</div>

	<div id="topControl" class="control center" style="width:145px;left:45%;">
		<img id="topArrow" class="arrow left" style="height:60px" src="{tpl}demo/assets/arrowtop2.png"></img>
		<div id="topText" class="dirText txtcenter" > Test</div>
	</div>

	<div id="bottomControl" class="control center" style="width:145px;left:45%;bottom:0px;">
		<div id="bottomText" class="dirText txtcenter"> Test</div>
		<img id="bottomArrow" class="arrow left" style="height:60px" src="{tpl}demo/assets/arrowbottom2.png"></img>

	</div>


</body>
</html>

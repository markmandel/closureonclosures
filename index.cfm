<!doctype html>

<cfimport taglib="./tags" prefix="tag" />

<html lang="en" xmlns:tag="http://www.w3.org/1999/html">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=1024" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <title>Getting closure on Closures</title>
    
    <meta name="description" content="It seems like all the cool kids are getting on the Closure bandwagon these days.  ColdFusion is no exception with Closures coming to ColdFusion Zeus in the near future, but what is the hype all about?
		Are closures really the programming nirvana that we've all been looking for, a well marketed snake oil of fancy programmatic syntax, or something in between?
		We'll look at exactly what Closures are, and how the can help you out with your day to day programming tasks, as well as other real world examples that will help show off the power of closures for those more tricky problems." />

    <meta name="author" content="Mark Mandel" />

	<link href='http://fonts.googleapis.com/css?family=Mate+SC|Rosario:400,700,700italic' rel='stylesheet' type='text/css'>

    <link href="css/main.css" type="text/css" rel="stylesheet" />
	<link href="js/google-code-prettify/prettify.css" type="text/css" rel="stylesheet" />
</head>
<body class="impress-not-supported">

<div id="impress">

    <div class="fallback-message">
        <p>Your browser <strong>doesn't support the features required</strong> by impress.js, so you are presented with a simplified version of this presentation.</p>
        <p>For the best experience please use the latest <strong>Chrome</strong>, <strong>Safari</strong> or <strong>Firefox</strong> browser. Upcoming version 10 of Internet Explorer <i>should</i> also handle it.</p>
    </div>

    <div id="title" class="step slide" data-x="0" data-y="0">
    </div>
	<div id="whoami" class="step slide" data-x="1000" data-y="0">
    </div>

	<div class="step" data-x="2100" data-y="0" data-rotate="-90" data-scale="2">
		<ol>
			<li>
				Why do we care about Closures?
			</li>
			<li>
				What is a Closure?
			</li>
			<li>
				What are some cool Closure examples?
			</li>
		</ol>
	</div>

	<div id="scary" class="step slide" data-x="2100" data-y="-2000" data-rotate="-90" data-scale="2">
		<img src="./images/scary.jpg" width="543" height="700" />
	</div>

	<div id="verbose" class="step slide" data-x="2550" data-y="-2000" data-z="-900" data-rotate="-90" data-rotate-y="90">
		<cfinclude template="./include/grimm.cfm" />
	</div>

	<div id="spanner" class="step slide" data-x="2550" data-y="-3000" data-z="-900" data-rotate="-90" data-rotate-y="90">
	</div>

	<div id="envelope" class="step slide" data-x="5000" data-y="5000" data-z="1500" data-rotate-y="-90">
	</div>

	<div id="simple-example-1" class="step slide" data-x="5000" data-y="6000" data-z="1500" data-rotate-y="-90">
		<tag:code file="/examples/WhereAmI.cfc" />
	</div>

	<div id="simple-example-2" class="step slide" data-x="5000" data-y="6000" data-z="2500" data-rotate-y="-90">
		<tag:code file="/examples/simple.cfm" run="true" />
	</div>

	<div id="function-1" class="step slide" data-x="5000" data-y="7000" data-z="1500" data-rotate-y="-90">
		<tag:code file="/examples/IHasFunction.cfc" />
	</div>

	<div id="function-2" class="step slide" data-x="5000" data-y="7000" data-z="2500" data-rotate-y="-90">
		<tag:code file="/examples/function.cfm" lang="java" run="true" />
	</div>

	<div id="define-closure" class="step slide" data-x="5000" data-y="7000" data-z="3500" data-rotate-y="-90">
		<tag:code file="/examples/defineClosure.cfm" run="true" startLine="2" lines="16" untab="1"/>
	</div>

	<div id="currying-1" class="step slide" data-x="5000" data-y="8000" data-z="1500" data-rotate-y="-90">
		<tag:code file="/examples/currying.cfm" startLine="2" lines="22" untab="1" />
	</div>
	<div id="currying-2" class="step slide" data-x="5000" data-y="8000" data-z="2500" data-rotate-y="-90">
		<tag:code file="/examples/currying.cfm" startLine="24" lines="17" untab="1" />
	</div>
	<div id="currying-3" class="step slide" data-x="5000" data-y="8000" data-z="3500" data-rotate-y="-90">
		<tag:code file="/examples/currying.cfm" startLine="41" lines="16" untab="1" run="true"/>
	</div>

	<div id="looping-1" class="step slide" data-x="5000" data-y="6000" data-z="-3500" data-rotate-y="-180" data-rotate-x="90" scale="78">
		<tag:code file="/examples/forLoop-cfloop.cfm" lang="java" run="true" />
	</div>

	<div id="looping-2" class="step slide" data-x="4000" data-y="6000" data-z="-3500" data-rotate-y="-180" data-rotate-x="90" scale="78">
		<tag:code file="/examples/forLoop-closure.cfm" lang="java" run="true" />
	</div>

	<div id="upto-1" class="step slide" data-x="5000" data-y="6000" data-z="-2500" data-rotate-y="-180" data-rotate-x="90" scale="78">
		<tag:code file="/examples/7-9.cfm" lang="java" run="true" />
	</div>

	<div id="repeat-1" class="step slide" data-x="5000" data-y="6000" data-z="-1500" data-rotate-y="-180" data-rotate-x="90" scale="78">
		<tag:code file="/examples/repeat.cfm" lang="java" run="true" />
	</div>

	<div id="conversion-1" class="step slide" data-x="5000" data-y="7000" data-z="-3500" data-rotate-y="-180" scale="78">
		<tag:code file="/examples/arrayfilter.cfm" lang="java" run="true" />
	</div>

	<div id="conversion-2" class="step slide" data-x="4000" data-y="7000" data-z="-3500" data-rotate-y="-180" scale="78">
		<tag:code file="/examples/arrayToStruct-1.cfm" lang="java" run="true" />
	</div>

	<div id="conversion-3" class="step slide" data-x="3000" data-y="7000" data-z="-3500" data-rotate-y="-180" scale="78">
		<tag:code file="/examples/arrayToStruct-2.cfm" lang="java" run="true" />
	</div>

	<div id="group-1" class="step slide" data-x="5000" data-y="8000" data-z="-3500" data-rotate-y="-180" scale="78">
		<tag:code file="/examples/grouping-1.cfm" startLine="4" lines="9" untab="1" run="true" />
	</div>
	<div id="group-2" class="step slide" data-x="4000" data-y="8000" data-z="-3500" data-rotate-y="-180" scale="78">
		<tag:code file="/examples/grouping-2.cfm" startLine="3" lines="5" untab="1"  run="true" />
	</div>

	<div id="visitor-1" class="step slide" data-x="6800" data-y="100" data-z="4000" data-rotate-y="-180">
		<tag:code file="/examples/raiders/Tuskan.cfc" startLine="1" lines="23" />
	</div>

	<div id="visitor-2" class="step slide" data-x="5800" data-y="100" data-z="4000" data-rotate-y="-180">
		<cfinclude template="examples/raiders/displayRaiders.cfm" />
	</div>

	<div id="visitor-3" class="step slide" data-x="4800" data-y="100" data-z="4000" data-rotate-y="-180">
		<tag:code file="/examples/raiders/Tuskan.cfc" startLine="24" lines="22" untab="1"/>
	</div>

	<div id="visitor-4" class="step slide" data-x="3800" data-y="100" data-z="4000" data-rotate-y="-180">
		<tag:code file="/examples/raiders/visitWithObject.cfm" run="true"/>
	</div>

	<div id="overview" class="step" data-x="0" data-y="0" data-scale="20">
	</div>

</div>

<div class="hint">
    <p>Use a spacebar or arrow keys to navigate</p>
</div>
<script>
if ("ontouchstart" in document.documentElement) { 
    document.querySelector(".hint").innerHTML = "<p>Tap on the left or right to navigate</p>";
}
</script>

<script src="js/impress.js"></script>
<script src="js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="js/google-code-prettify/prettify.js"></script>
<script src="js/main.js"></script>
<script>
	impress().init();
	prettyPrint();
</script>


</body>
</html>
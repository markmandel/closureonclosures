<!--- makes the tree of raiders, and gives me a raider --->
<cfinclude template="makeTuskanRaiders.cfm" />
<cfscript>
	array = [];
	raider.visitWithClosure(function(it) { arrayAppend(array, it); });
</cfscript>

<cfoutput>
<ol>
<cfloop array="#array#" index="lineRaider">
	<li>#lineRaider.getName()#</li>
</cfloop>
</ol>
</cfoutput>
<!--- makes the tree of raiders, and gives me a raider --->
<cfinclude template="makeTuskanRaiders.cfm" />
<cfscript>
	visitor = new ArrayCollectVisitor();

	raider.visitWithObject(visitor);

	array = visitor.getArray();
</cfscript>

<cfoutput>
<ol>
<cfloop array="#array#" index="lineRaider">
	<li>#lineRaider.getName()#</li>
</cfloop>
</ol>
</cfoutput>
<!--- makes the tree of raiders, and gives me a raider --->
<cfinclude template="makeTuskanRaiders.cfm" />
<cfscript>
	visitor = new ArrayCollectVisitor();

	raider.visitWithObject(visitor);
</cfscript>

<cfoutput>
<ol>
<cfloop array="#visitor.getArray()#" index="lineRaider">
	<li>#lineRaider.getName()#</li>
</cfloop>
</ol>
</cfoutput>
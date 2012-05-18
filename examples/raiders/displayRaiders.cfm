<cfinclude template="makeTuskanRaiders.cfm" />

<cfscript>
	function render(raider)
	{
			writeOutput("<li>#raider.getName()#</li>");
			writeOutput("<ol>");
				ArrayEach(raider.getBuddies(), function(it) { render(it); });
			writeOutput("</ol>");
	}
</cfscript>
<cfoutput>
	<ol>
		#render(raider)#
	</ol>
</cfoutput>

<cfscript>
	//clean up, in case we want to show it again.
	structDelete(variables, "render");
</cfscript>
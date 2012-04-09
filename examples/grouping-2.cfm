<cfinclude template="../sesame/collections.cfm" />
<cfscript>
	names = ["Westley", "Inigo Montoya", "Prince Humperdink",
		"Buttercup", "Vizzini"];

	grouping = _groupBy(names,
						function(it) { return ListLen(it, " "); });
</cfscript>

<cfdump var="#grouping#">

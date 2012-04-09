<!--- normal cfloop--->
<cfoutput>
	<cfloop from="1" to="9" index="i">NaNa</cfloop>
</cfoutput>
Batman.

<hr/>

<!--- closures --->
<cfinclude template="../sesame/numbers.cfm" />
<cfscript>
	_times(9, function(it) { writeOutput("NaNa"); });
	writeOutput(" Batman.");
</cfscript>
<!--- normal loop --->
<cfoutput>
<cfloop from="7" to="9" index="i">
#i#
</cfloop>
</cfoutput>

<hr/>

<!--- closures --->
<cfinclude template="../sesame/numbers.cfm" />
<cfscript>
	_upto(7, 10, function(i) { writeOutput(i & " "); });
</cfscript>
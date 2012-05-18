<cfinclude template="../sesame/concurrency.cfm" />
<cfscript>
	data = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
	total = 0;

	_eachParallel(data, function(it) { total+= it; });
</cfscript>
<cfoutput>#total#</cfoutput>
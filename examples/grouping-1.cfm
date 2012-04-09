<cfscript>
	names = ["Westley", "Inigo Montoya", "Prince Humperdink",
		"Buttercup", "Vizzini"];
	grouping = {};
	for(name in names)
	{
		key = ListLen(name, " ");
		if(!structKeyExists(grouping, key))
			grouping[key] = [];

		arrayAppend(grouping[key], name);
	}
</cfscript>

<cfdump var="#grouping#">

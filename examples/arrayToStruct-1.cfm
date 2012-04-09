<cfscript>
	names = ["Westley", "Inigo Montoya", "Prince Humperdink",
		"Buttercup", "Vizzini"];

	//No Closure (boooo!)
	hashLookup = {};
	for(name in names)
	{
		hashLookup[hash(name)] = name;
	}
</cfscript>

<cfdump var="#hashLookup#">

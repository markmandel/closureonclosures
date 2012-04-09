<cfscript>
	names = ["Westley", "Inigo Montoya", "Prince Humperdink",
		"Buttercup", "Vizzini"];

	//No Closure (boooo!)
	filteredNames1 = [];
	for(name in names)
	{
		if(listLen(name, " ") == 1)
			arrayAppend(filteredNames1, name);
	}

	//Closure (Yaaaay!)
	filteredNames2 = ArrayFilter(names,
		function(it) { return listLen(it, " ") == 1; } );
</cfscript>

<cfoutput>#filteredNames1.toString()#</cfoutput><br/>
<cfoutput>#filteredNames2.toString()#</cfoutput><br/>
<cfinclude template="../sesame/collections.cfm">
<cfscript>
	names = ["Westley", "Inigo Montoya", "Prince Humperdink",
		"Buttercup", "Vizzini"];

	//Closure (Yaaaay!)
	hashLookup = _collectEntries(names,
							function(it) { return [hash(it), it]; });
</cfscript>

<cfdump var="#hashLookup#">

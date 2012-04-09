<cfscript>
	names = ["Westley", "Inigo Montoya", "Prince Humperdink",
		"Buttercup", "Vizzini"];
</cfscript>
<ul>
	<cfscript>
		ArrayEach(names, function(it)
			{ writeOutput("<li>#it#</li>"); });
	</cfscript>
</ul>



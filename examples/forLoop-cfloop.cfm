<cfscript>
	names = ["Westley", "Inigo Montoya", "Prince Humperdink",
		"Buttercup", "Vizzini"];
</cfscript>
<!--- normal loop (ech) --->
<ul>
	<cfloop array="#names#" index="name">
		<cfoutput><li>#name#</li></cfoutput>
	</cfloop>
</ul>



<cfscript>
	variables.greeting = "NO FUNKSHUN! KTHXBI!";

	ihasfunction = new IHasFunction();
</cfscript>
<p>
<cfoutput>#ihasfunction.greet()#</cfoutput>
</p>

<cfscript>
	variables.greet = ihasfunction.greet;
</cfscript>

<p>
<cfoutput>#greet()#</cfoutput>
</p>
<cfscript>
	function add(a)
	{
		return function(b)
		{
			return a + b;
		};
	}

	addToSeven = add(7);
</cfscript>
<cfoutput>#addToSeven(10)#</cfoutput>
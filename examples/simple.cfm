<cfscript>
	log = "";
	whereami = new WhereAmI([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);

	whereami.each(function(number) { log &= arguments.number; });
</cfscript>

<cfoutput>#log#</cfoutput>
<cfscript>
	threads = [];
	data = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
	variables.total = 0;

	for(variables.item in data)
	{
		name = createUUID();
		arrayAppend(threads, name);
		thread action="run" name="#name#" item="#item#"
		{
			variables.total += item;
		}
	}

	for(name in threads)
	{
		threadJoin(name);
	}
</cfscript>
<cfoutput>#total#</cfoutput>
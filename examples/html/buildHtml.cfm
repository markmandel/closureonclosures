<cfscript>
	b = new XMLBuilder();

	b.html(function()
	{
		b.head(function()
		{
			b.meta({charset="utf-8"});
			b.title("Getting closure on Closures");
		});
		b.body(function()
		{
			b.h1("Hello cf.Objective()!");
			b.p("Welcome to cf.Objective() 2012.", {class="welcome"});
		});
	});
</cfscript>

<cfoutput>#htmlEditFormat(b.$toString())#</cfoutput>
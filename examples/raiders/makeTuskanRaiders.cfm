<cfscript>
	b = new TuskanBuilder();

	b.raider("Raaar", function()
		{
			b.raider("Raaarrraazzz");

			b.raider("AarrhhzzzRa", function()
			{
				b.raider("Grrraaazzhhhaa");
				b.raider("Grrrzzaaahhhaa");
			});

			b.raider("Leuurrggg", function()
			{
				b.raider("Uuurgllzz");
			});
		});

	raider = b.toRaiders();
</cfscript>
<cfscript>
	array = ["Han", "Luke", "Darth", "Leia"];

	//inline
	ArrayEach(array,
		function(person)
		{
			writeOutput( arguments.person & " is awesome! ");
		});

	//defined
	myFunc = function(person)
			 {
				writeOutput(arguments.person & " is not so bad... ");
			 };

	ArrayEach(array, myFunc);
</cfscript>
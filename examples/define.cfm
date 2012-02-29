<cfscript>
	array = ["Mark", "Scott", "Ray", "Bob", "Brian"];

	//inline - anonymous
	ArrayEach(array, function(name) { writeOutput(arguments.name & " is awesome!<br/>") });
</cfscript>

<hr />

<cfscript>
	//assign to a variable
	closure = function(name)
		{
			writeOutput("Do you even know " & arguments.name & "?<br/>")
		}

	ArrayEach(array, closure);
</cfscript>

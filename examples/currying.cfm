<cfscript>
	//curry from left to right
	public function function curry(function func, array args)
	{
		var argMap = {};
		var counter = 1;
		ArrayEach(args, function(it) { argMap[counter++] = it; });

		return function()
				{
					//we will assume positional arguments
					var newArgs = StructCopy(argMap);
					var len = StructCount(argMap);
					//mix it all toghether
					StructEach(arguments, function(key, value)
						{
							newArgs[len + key] = value;
						});

					return func(argumentCollection=newArgs);
				};
	}

	public array function collect(array data, function transform)
	{
		var collection = [];
		ArrayEach(arguments.data, function(it)
				{
					ArrayAppend(collection, transform(it));
				}
		);

		return collection;
	};

	names = ["Westley", "Inigo Montoya", "Prince Humperdink",
										"Buttercup", "Vizzini"];

	collectFromNames = curry(collect, [names]);

	//All Names Reversed
	reversedNames = collectFromNames(function(it)
				{ return reverse(it); });

	//the total length of all the names...
	total = 0;
	ArrayEach(
		collectFromNames(function(it) { return Len(it); }),
		function(it) { total += it; }
	);
</cfscript>
<cfoutput>
All Names Reverse: #reversedNames.toString()#
<br/>
Total String Length: #total#
</cfoutput>

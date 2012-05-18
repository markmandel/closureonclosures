/**
 * XML Node builders
 */
component accessors="true"
{
	property stack;
	property top;

	/**
	 * Constructor
	 */
	public XMLBuilder function init()
	{
		variables.stack = createObject("java", "java.util.ArrayDeque").init();
		variables.top = 0;

		return this;
	}

	/**
     * missing method for node creation
     */
	public function onMissingMethod(required string missingMethodName, required struct missingMethodArguments)
	{
		/*
			arguments options
			node(function() {})
			node("text")
			node("text", function() {});
			node("text", {});
			node({});
			node({}, function() {});
		*/

		var node =
		{
			name = arguments.missingMethodName
			,children = createObject("java", "java.util.ArrayList").init()
		};

		if(structKeyExists(arguments.missingMethodArguments, "1"))
		{
			var arg1 = arguments.missingMethodArguments[1];

			if(isClosure(arg1))
			{
				var child = arg1;
			}
			else if(isSimpleValue(arg1))
			{
				node.text = arg1;
				if(StructKeyExists(arguments.missingMethodArguments, "2"))
				{
					var arg2 = arguments.missingMethodArguments[2];
					if(isStruct(arg2))
					{
						node.attribs = arg2;

						if(StructKeyExists(arguments.missingMethodArguments, "3"))
						{
							var child = arguments.missingMethodArguments[3];
						}

					}
					else if(isClosure(arg2))
					{
						var child = arg2;
					}
				}
			}
			else if(isStruct(arg1))
			{
				node.attribs = arg1;

				if(StructKeyExists(arguments.missingMethodArguments, "2"))
				{
					var child = arguments.missingMethodArguments[2];
				}
			}
		}

		if(!isNull(variables.stack.peek()))
		{
			ArrayAppend(variables.stack.peek().children, node);
		}
		else
		{
			variables.top = node;
		}

		variables.stack.push(node);

		if(structKeyExists(local, "child"))
		{
			local.child();
		}

		variables.stack.pop();
	}

	/**
	 * convert to XML
	 */
	public string function $toString()
	{
		var builder = createObject("java", "java.lang.StringBuilder").init();

		render(variables.top, builder);

		return builder.toString();
	}

	/**
	 * recursive render function
	 */
	private void function render(required struct node, required any stringBuilder)
	{
		var builder = arguments.stringBuilder;

		builder.append("<").append(arguments.node.name);

		if(structKeyExists(node, "attribs"))
		{
			structEach(node.attribs, function(k, v) { builder.append(" ").append(Lcase(k)).append('="').append(htmlEditFormat(v)).append('"'); });
		}

		builder.append(">");

		if(structKeyExists(node, "text"))
		{
			builder.append(node.text);
		}

		ArrayEach(node.children, function(child) { render(child, builder); });

		builder.append("</").append(arguments.node.name).append(">");
	}
}
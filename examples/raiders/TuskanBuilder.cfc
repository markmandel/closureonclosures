/**
 * Tuskan Builder
 */
component
{
	/**
	 * Constructor
	 */
	public TuskanBuilder function init()
	{
		variables.stack = createObject("java", "java.util.ArrayDeque").init();
		variables.top = 0;

		return this;
	}

	/**
	 * make some tuskan raiders
	 */
	public void function raider(required string name, function child)
	{
		var raider = new Tuskan(name=arguments.name);

		if(!isNull(variables.stack.peek()))
		{
			variables.stack.peek().addBuddy(raider);
		}
		else
		{
			variables.top = raider;
		}

		variables.stack.push(raider);

		if(structKeyExists(arguments, "child"))
		{
			arguments.child();
		}

		variables.stack.pop();
	}

	/**
	 * give me back my raiders!
	 */
	public Tuskan function toRaiders()
	{
		return variables.top;
	}
}

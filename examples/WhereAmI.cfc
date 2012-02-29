/**
 * A component just to show that there is
 * a change in context.
 */
component accessors="true"
{
	property name="array" type="array";

	/**
	 * Constructor
	 */
	public WhereAmI function init(required array arr)
	{
		setArray(arguments.arr);
		return this;
	}

	/**
	 * visit each item in the closure, and do stuff
	 */
	public void function each(function closure)
	{
		ArrayEach(getArray(), closure);
	}
}

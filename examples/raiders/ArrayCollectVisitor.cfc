/**
 * I create an array out of everything I visit
 */
component accessors="true"
{
	property array array;

	/**
	 * Constructor
	 */
	public ArrayCollectVisitor function init()
	{
		setArray([]);
		return this;
	}

	/**
	 * visit implementation
	 */
	public void function visit(object)
	{
		arrayAppend(getArray(), arguments.object);
	}
}
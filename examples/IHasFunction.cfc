/**
 * I HAZ A FUNKSHUN
 */
component
{
  /**
   * Constructor
   */
	public IHasFunction function init()
	{
		variables.greeting = "HAI! I HAZ A FUNKSHUN!";

		return this;
	}

	/**
	 * Greet!
	 */
	public string function greet()
	{
		return variables.greeting;
	}
}

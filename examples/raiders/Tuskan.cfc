/**
 * I'm a Tuskan Raider
 */
component accessors="true"
{
	property string name;
	property array buddies;

	public Tuskan function init(required string name)
	{
		setBuddies([]);
		setName(arguments.name);
		return this;
	}

	/**
	 * add a buddy!
	 */
	public void function addBuddy(required Tuskan raider)
	{
		arrayAppend(getBuddies(), arguments.raider);
	}

	/**
	 * visit with an object
	 */
	public void function visitWithObject(required any object)
	{
		arguments.object.visit(this);

		for(var bud in getBuddies())
		{
			bud.visitWithObject(arguments.object);
		}
	}

	/**
	 * visit with a closure
	 */
	public void function visitWithClosure(required function visitor)
	{
		visitor(this);
		ArrayEach(getBuddies(),
			function(bud) { bud.visitWithClosure(visitor); });
	}
}
package objects.hazards;
import flixel.FlxSprite;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.FlxG;

class HazardRotator extends FlxSprite
{
	/* This works in tandem with Hazard component. But it is not well implemented yet. So until then, do not use in level templates.
	 */
	
	private var rotspeed:Int = 10;
	var comp1:HazardComponent;
	var comp2:HazardComponent;
	public var compGroup:FlxTypedGroup<Hazard>;
	

	public function new(x:Float, y:Float)
	{
		super(x, y);
		comp1 = cast new HazardComponent(x, y, 200, 2);
		comp2 = cast new HazardComponent(x+100, y-100, 2, 200);
		compGroup = new FlxTypedGroup<Hazard>();
		
		compGroup.add(comp1);
		compGroup.add(comp2);
		setGroupAngularVelocity(20);

	}
	
	override public function update(elapsed:Float):Void 
	{
		for (i in compGroup)
		{
		if (FlxG.pixelPerfectOverlap(i, Reg.PS.player))
		{
			Reg.PS.player.damage();
		}
		}
	}
	
	private function setGroupAngularVelocity(amount:Int)
	{
		for (i in compGroup)
		{
			i.angularVelocity = amount;
		}		
	}
}
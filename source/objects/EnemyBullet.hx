package objects;

import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.FlxObject;
import flixel.FlxG;

class EnemyBullet extends FlxSprite
{

	public function new(x:Float,y:Float) 
	{
		super(x,y);
		makeGraphic(2, 8, FlxColor.WHITE, false); // placeholder;
	}
	
	override public function update(elapsed:Float):Void
	{
		
		super.update(elapsed);
		if (!isOnScreen() || FlxG.collide(Reg.PS.map, this))
		    kill();
		
		if (FlxG.overlap(Reg.PS.player, this))
		     interact(Reg.PS.player);
			 
	}
	
		private function interact(player:Player)
	{
		player.damage();
		kill();
		//FlxObject.separate(this, player);
			
	}
	
}
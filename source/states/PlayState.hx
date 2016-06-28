package states;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.addons.effects.FlxTrail;
import flixel.group.FlxGroup;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.FlxCamera;
import flixel.util.FlxColor;
import flixel.text.FlxText;
import flixel.tile.FlxTilemap;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import flixel.util.FlxSpriteUtil;
import objects.items.Item;


import objects.enemies.EnemyBullet;
//import objects.Goal;
import objects.Player;
import objects.PlayerBullet;
import objects.gamesys.Scroller;
import objects.enemies.Enemy;


import utils.pcg.LevelLoaderProc;
import utils.pcg.LevelEnemies;


class PlayState extends FlxState
{
	
	public var map:LevelLoaderProc;
	
	//public var hazardMap:FlxTilemap;
	public var player(default, null):Player;
	public var PBullets:FlxTypedGroup<PlayerBullet>;
	public var EBullets:FlxTypedGroup<EnemyBullet>;
	public var enemies(default, null):FlxTypedGroup<Enemy>;
	public var items(default, null):FlxTypedGroup<Item>;
//	public var goals(default, null):FlxTypedGroup<Goal>;
	private var _entities:FlxGroup;
//	private var _system:FlxGroup;

	private var _scroller(default, null):Scroller;
	
	
	private var _hud:HUD;
	private var _gameCamera:FlxCamera;
	private var _hudCamera:FlxCamera;
	
	
	
	override public function create():Void
	{
		Reg.PS = this;
		Reg.pause = false;
	
		
		player = new Player(16, FlxG.width/2);
		enemies = new FlxTypedGroup<Enemy>();
		items = new FlxTypedGroup<Item>();
		//goals = new FlxTypedGroup<Goal>();
		_entities = new FlxGroup();
		//_system = new FlxGroup();
		
        PBullets = new FlxTypedGroup<PlayerBullet>();
		EBullets = new FlxTypedGroup<EnemyBullet>();
	
		FlxG.mouse.visible = false; // must always be set to false pls
		
		 map = new LevelLoaderProc();
		_gameCamera = new FlxCamera();
		_hudCamera = new FlxCamera();
      	cameraSetup();
		
		

		add(map.loadedMap);
		add(player);
		add(PBullets);
		add(items);
		//_system.add(goals);
		_entities.add(EBullets);
		_entities.add(enemies);
		
		LevelEnemies.populateEnemies(map.loadedMap);
	
		add(_entities);
		//add(_system);

		super.create();
	}
	
	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		collisions();
//	    trace(items.length);
//		trace(items.members);

		FlxSpriteUtil.bound(player, 
		                    FlxG.camera.scroll.x, 
							FlxG.camera.scroll.x + FlxG.camera.width,
							FlxG.camera.scroll.y,
							FlxG.camera.scroll.y + FlxG.camera.height);
		//trace(FlxG.camera.scroll);
		
		
	    if (player.x <= FlxG.camera.scroll.x)
		{
			player.damage();
		//    FlxObject.separate(FlxG.camera, player);
		}
	}
	
	public function cameraSetup()
	{
	
		_scroller = new Scroller(player.x + 80, player.y);
		
		FlxG.cameras.reset(_gameCamera);
		FlxG.cameras.add(_hudCamera);
		_hudCamera.bgColor = FlxColor.TRANSPARENT;
		FlxCamera.defaultCameras = [_gameCamera];
		_hud = new HUD();
		_hud.setCamera(_hudCamera);
		
		_gameCamera.follow(_scroller, FlxCameraFollowStyle.TOPDOWN_TIGHT,0.01);
		_gameCamera.setScrollBoundsRect(0, 0, map.loadedMap.width, map.loadedMap.height, true);
		//FlxG.camera.antialiasing = false;
		_gameCamera.pixelPerfectRender = false;	
		add(_scroller);
		add(_hud);
	
	}
	
	public function collisions()
	{
		
		for (enemy in enemies)
		{
		    for (bullet in PBullets){
			   if (FlxG.collide(enemy, bullet))
			{
			       enemy.damage();
			       bullet.kill();
			}
		                            }
	}
	
	   for (item in items)
	   {
		   if (FlxG.collide(item, player))
		   {
			   item.interact(player);
		   }
	   }
									
		if (player.alive)
		{
			FlxG.collide(map.loadedMap, player);
		}
		
		
		if (FlxG.collide(_entities, player))
		{
			player.damage();
		
	    }
    }
}

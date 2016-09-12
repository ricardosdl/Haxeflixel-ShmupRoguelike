package lime;


import lime.utils.Assets;


class AssetData {

	private static var initialized:Bool = false;
	
	public static var library = new #if haxe3 Map <String, #else Hash <#end LibraryType> ();
	public static var path = new #if haxe3 Map <String, #else Hash <#end String> ();
	public static var type = new #if haxe3 Map <String, #else Hash <#end AssetType> ();	
	
	public static function initialize():Void {
		
		if (!initialized) {
			
			path.set ("assets/data/mapchunks/legend.txt", "assets/data/mapchunks/legend.txt");
			type.set ("assets/data/mapchunks/legend.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/mapchunks/level_1/e-0.tmx", "assets/data/mapchunks/level_1/e-0.tmx");
			type.set ("assets/data/mapchunks/level_1/e-0.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/mapchunks/level_1/e-1.tmx", "assets/data/mapchunks/level_1/e-1.tmx");
			type.set ("assets/data/mapchunks/level_1/e-1.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/mapchunks/level_1/o-0.tmx", "assets/data/mapchunks/level_1/o-0.tmx");
			type.set ("assets/data/mapchunks/level_1/o-0.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/mapchunks/level_1/o-1.tmx", "assets/data/mapchunks/level_1/o-1.tmx");
			type.set ("assets/data/mapchunks/level_1/o-1.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/mapchunks/level_1/o-2.tmx", "assets/data/mapchunks/level_1/o-2.tmx");
			type.set ("assets/data/mapchunks/level_1/o-2.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/mapchunks/level_1/o-3.tmx", "assets/data/mapchunks/level_1/o-3.tmx");
			type.set ("assets/data/mapchunks/level_1/o-3.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/mapchunks/level_1/s-0.tmx", "assets/data/mapchunks/level_1/s-0.tmx");
			type.set ("assets/data/mapchunks/level_1/s-0.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/mapchunks/level_1/s-1.tmx", "assets/data/mapchunks/level_1/s-1.tmx");
			type.set ("assets/data/mapchunks/level_1/s-1.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/mapchunks/level_1/t-0.tmx", "assets/data/mapchunks/level_1/t-0.tmx");
			type.set ("assets/data/mapchunks/level_1/t-0.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/mapchunks/level_1/t-1.tmx", "assets/data/mapchunks/level_1/t-1.tmx");
			type.set ("assets/data/mapchunks/level_1/t-1.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/mapchunks/level_1/t-2.tmx", "assets/data/mapchunks/level_1/t-2.tmx");
			type.set ("assets/data/mapchunks/level_1/t-2.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/mapchunks/level_1/t-3.tmx", "assets/data/mapchunks/level_1/t-3.tmx");
			type.set ("assets/data/mapchunks/level_1/t-3.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/mapchunks/level_1/t-4.tmx", "assets/data/mapchunks/level_1/t-4.tmx");
			type.set ("assets/data/mapchunks/level_1/t-4.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/mapchunks/level_1/t-5.tmx", "assets/data/mapchunks/level_1/t-5.tmx");
			type.set ("assets/data/mapchunks/level_1/t-5.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/mapchunks/level_1/t-6.tmx", "assets/data/mapchunks/level_1/t-6.tmx");
			type.set ("assets/data/mapchunks/level_1/t-6.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/mapchunks/level_1/t-7.tmx", "assets/data/mapchunks/level_1/t-7.tmx");
			type.set ("assets/data/mapchunks/level_1/t-7.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/mapchunks/level_1/t-8.tmx", "assets/data/mapchunks/level_1/t-8.tmx");
			type.set ("assets/data/mapchunks/level_1/t-8.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/mapchunks/level_1/x-0.tmx", "assets/data/mapchunks/level_1/x-0.tmx");
			type.set ("assets/data/mapchunks/level_1/x-0.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/mapchunks/level_2/a2-0.tmx", "assets/data/mapchunks/level_2/a2-0.tmx");
			type.set ("assets/data/mapchunks/level_2/a2-0.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/mapchunks/level_2/a2-1.tmx", "assets/data/mapchunks/level_2/a2-1.tmx");
			type.set ("assets/data/mapchunks/level_2/a2-1.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/mapchunks/level_2/s2-1.tmx", "assets/data/mapchunks/level_2/s2-1.tmx");
			type.set ("assets/data/mapchunks/level_2/s2-1.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/pixel-font.ttf", "assets/data/pixel-font.ttf");
			type.set ("assets/data/pixel-font.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("assets/images/bigEnemies.png", "assets/images/bigEnemies.png");
			type.set ("assets/images/bigEnemies.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/cursor8.png", "assets/images/cursor8.png");
			type.set ("assets/images/cursor8.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/enemies.png", "assets/images/enemies.png");
			type.set ("assets/images/enemies.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/explosion.png", "assets/images/explosion.png");
			type.set ("assets/images/explosion.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/items.png", "assets/images/items.png");
			type.set ("assets/images/items.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/mockups.pyxel", "assets/images/mockups.pyxel");
			type.set ("assets/images/mockups.pyxel", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/images/nohit.png", "assets/images/nohit.png");
			type.set ("assets/images/nohit.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/player.png", "assets/images/player.png");
			type.set ("assets/images/player.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/player.pyxel", "assets/images/player.pyxel");
			type.set ("assets/images/player.pyxel", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/images/playerDawnbringer.pyxel", "assets/images/playerDawnbringer.pyxel");
			type.set ("assets/images/playerDawnbringer.pyxel", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/images/playerWip.pyxel", "assets/images/playerWip.pyxel");
			type.set ("assets/images/playerWip.pyxel", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/images/solid.png", "assets/images/solid.png");
			type.set ("assets/images/solid.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/solidtiles.pyxel", "assets/images/solidtiles.pyxel");
			type.set ("assets/images/solidtiles.pyxel", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/images/sys/cursor.png", "assets/images/sys/cursor.png");
			type.set ("assets/images/sys/cursor.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/tiles.png", "assets/images/tiles.png");
			type.set ("assets/images/tiles.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/tiles.png_palette.png", "assets/images/tiles.png_palette.png");
			type.set ("assets/images/tiles.png_palette.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/turret.png", "assets/images/turret.png");
			type.set ("assets/images/turret.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/sounds/beep.ogg", "flixel/sounds/beep.ogg");
			type.set ("flixel/sounds/beep.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("flixel/sounds/flixel.ogg", "flixel/sounds/flixel.ogg");
			type.set ("flixel/sounds/flixel.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("flixel/fonts/nokiafc22.ttf", "flixel/fonts/nokiafc22.ttf");
			type.set ("flixel/fonts/nokiafc22.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("flixel/fonts/monsterrat.ttf", "flixel/fonts/monsterrat.ttf");
			type.set ("flixel/fonts/monsterrat.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("flixel/images/ui/button.png", "flixel/images/ui/button.png");
			type.set ("flixel/images/ui/button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			
			
			initialized = true;
			
		} //!initialized
		
	} //initialize
	
	
} //AssetData

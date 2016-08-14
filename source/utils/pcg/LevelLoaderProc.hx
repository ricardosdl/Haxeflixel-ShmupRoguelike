package utils.pcg;
import flixel.FlxBasic;
import flixel.FlxState;
import flixel.graphics.FlxGraphic;
import flixel.tile.FlxTilemap;
import utils.pcg.MapChunk;
import utils.pcg.MapChunkMerger;
import flixel.graphics.frames.FlxTileFrames;

import flixel.math.FlxPoint;

class LevelLoaderProc
{
	public var loadedMap:FlxTilemap;
	
	// will use the Data from LevelGenerator to load a level
	// And display it. Collisions?, etc. 
	// Also create objects too, based, again, on the values 
	// given my LevelGenerator.hx

	public function new()
	{	
		loadedMap = loadGeneratedLevel();
	}	
	
	public function loadGeneratedLevel():FlxTilemap
	{
        var loadedMap = new FlxTilemap();
		var generatedMap:Array<Int> = cast MapChunkMerger.populateCurrentMap();

		//trace("Clean array size : " + cleanArray.length);

	   loadedMap.loadMapFromArray(generatedMap, 12, 20, FlxTileFrames.fromBitmapAddSpacesAndBorders(FlxGraphic.fromAssetKey(AssetPaths.solid__png), 
	   new FlxPoint(8,8), new FlxPoint(1,1), new FlxPoint(1,1), null),  8, 8);
	
	   return loadedMap;
		
	}
}
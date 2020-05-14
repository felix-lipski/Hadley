package ui;

import flixel.math.FlxPoint;
import flixel.math.FlxRect;
import openfl.Assets;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.geom.Point;
import openfl.geom.Rectangle;
import openfl.utils.AssetLibrary;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.group.FlxSpriteGroup;
import flixel.addons.display.FlxExtendedSprite;
import flixel.addons.plugin.FlxMouseControl;

import RoomState;
import communication.NetworkManager;
import game.ClientData;
/**
 * ...
 * @author Hunter
 */

class StarboardInterface extends FlxSpriteGroup
{
	public var gameBar:GameBar;
	
	public static var lastAppearance:String;
	
	public function new() 
	{
		super();
		
		gameBar = new GameBar();
		gameBar.x = 0;
		gameBar.y = FlxG.height - Math.floor(gameBar.baseWood.height) + 1;
		add(gameBar);
		
		FlxG.plugins.add(new FlxMouseControl());
		FlxMouseControl.mouseZone = FlxG.worldBounds;
		this.scrollFactor.set(0, 0);
		
		forEach(
			function(sprite:FlxSprite)
			{
				sprite.scrollFactor.set(0, 0);
			}
		);
	}
	
	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		if (FlxG.mouse.justPressed && FlxG.mouse.overlaps(gameBar.playerMirror))
		{
		}
	}
	
	public function changeAppearance(appearanceString:String):Void
	{
		if (appearanceString != lastAppearance)
		{
			RoomState.playerAvatar.setAppearance(appearanceString);
			setMirrorLook(RoomState.playerAvatar.pixels);
			NetworkManager.sendChangeClothes(appearanceString);
			
			lastAppearance = appearanceString;
		}
	}
	
	public function openStoreWindow(itemArray:Array<Int>):Void
	{
	}
	
	public function setMirrorLook(avatarBmp:BitmapData):Void
	{
		var bmp:BitmapData = new BitmapData(38, 56, true);
		bmp.copyPixels(avatarBmp, new Rectangle(123, 0, 38, 56), new Point(0, 0));
		
		gameBar.setReflections(bmp);
	}
	
	/*
	public function setWindowOnTop(window:Window):Void
	{
		remove(window);
		add(window);
	}
	*/
}
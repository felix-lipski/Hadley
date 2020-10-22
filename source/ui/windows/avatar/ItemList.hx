package ui.windows.avatar;

import openfl.Assets;
import openfl.display.BitmapData;

import flixel.FlxG;
import flixel.addons.display.FlxExtendedSprite;
import flixel.group.FlxSpriteGroup.FlxTypedSpriteGroup;

import game.AvatarItem;
import game.ClothingItem;
import game.ClothingType;
import game.Inventory;

import ui.windows.avatar.SlotBox;
import ui.windows.WindowItem;

/**
 * ...
 * @author Hunter
 */
class ItemList extends WindowItem
{
	public var listType:String;
	public var selectedItem:ClothingItem;
	public var slotBoxes:Array<SlotBox>;
	public var itemsByType:Array<ClothingItem>;
	
	private var currentPage:Int = 0;
	private var currentSlot:Int = 0;
	private var itemSlotCursor:WindowItem;
	
	private static var itemGridContainer:BitmapData;
	private static var itemGridContainerX:BitmapData;
	private static var itemSlotInventory:BitmapData;
	private static var itemSlotSelected:BitmapData;

	public function new(clothingType:String, ?firstItem:Int=0, ?_x:Int, ?_y:Int):Void
	{
		itemGridContainer = Assets.getBitmapData("starboard:assets/interface/starboard/elements/item_grid_container.png");
		itemGridContainerX = Assets.getBitmapData("starboard:assets/interface/starboard/elements/item_grid_container_x.png");
		itemSlotInventory = Assets.getBitmapData("starboard:assets/interface/starboard/elements/item_slot_inventory.png");
		itemSlotSelected  = Assets.getBitmapData("starboard:assets/interface/starboard/elements/item_slot_selected.png");
		
		super(Std.int(_x), Std.int(_y), itemGridContainer);
		
		listType = clothingType;
		itemsByType = Inventory.wardrobe.filter(matchClothingType);
		selectedItem = itemsByType[0];

		// slotBoxes = new Array<SlotBox>();
		
		/*
		for (i in 0...9)
		{
			var slotX:Int = Std.int(this.mainWindow.x) + 5 + (((i % 3) * 30) + ((i % 3) * 10));
			var slotY:Int = Std.int(this.mainWindow.y) + 8 + ((Math.floor(i / 3) * 30) + (Math.floor(i / 3) * 10));
			
			slotBoxes.push(new SlotBox(listType, slotX, slotY));
			
			trace("SlotBox #" + i + ": " + slotX + ", " + slotY);
			
			if (i < itemsByType.length)
			{
				slotBoxes[i].setGameItem(itemsByType[i].gameItemId, 2);
			}
			
			add(slotBoxes[i]);
		}

		trace("itemSlotCursor at: " + slotBoxes[0].x + ", " + slotBoxes[0].y);
		itemSlotCursor = new WindowItem(Std.int(slotBoxes[0].x), Std.int(slotBoxes[0].y), itemSlotSelected);
		add(itemSlotCursor);

		itemGridContainerSpr.enableMouseDrag();
		*/
	}

	public function resetList(clothingType:String)
	{
		//remove(itemSlotCursor);
		
		listType = clothingType;
		selectedItem = null;
		itemsByType = Inventory.wardrobe.filter(matchClothingType);
		currentPage = 0;
		currentSlot = 0;

		setPageItems();

		/*
		itemSlotCursor = new WindowItem(Std.int(slotBoxes[0].windowPos.x), Std.int(slotBoxes[0].windowPos.y), itemSlotSelected);
		add(itemSlotCursor);
		*/
	}

	private function setPageItems():Void
	{
		/*
		for (i in 0...9)
		{
			var itemNum:Int = (currentPage * 9) + i;
			
			if (itemNum <= itemsByType.length)
			{
				// TODO: Color ID by pallette selection.
				slotBoxes[i].setGameItem(itemsByType[itemNum].gameItemId, 3);
			}
			
			else
			{
				slotBoxes[i].clearGameItem();
			}
		}
		*/
	}	
	
	public function nextPage():Void
	{
		currentPage++;
		setPageItems();
	}
	
	public function lastPage():Void
	{
		if (currentPage > 0)
		{
			currentPage--;
		}
		
		setPageItems();
	}
	
	public function matchClothingType(item:ClothingItem)
	{
		return (item.itemType == listType);
	}
}
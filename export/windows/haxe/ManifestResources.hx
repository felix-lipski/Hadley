package;


import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {
	
	
	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	
	
	public static function init (config:Dynamic):Void {
		
		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();
		
		var rootPath = null;
		
		if (config != null && Reflect.hasField (config, "rootPath")) {
			
			rootPath = Reflect.field (config, "rootPath");
			
		}
		
		if (rootPath == null) {
			
			#if (ios || tvos || emscripten)
			rootPath = "assets/";
			#elseif (sys && windows && !cs)
			rootPath = FileSystem.absolutePath (haxe.io.Path.directory (#if (haxe_ver >= 3.3) Sys.programPath () #else Sys.executablePath () #end)) + "/";
			#else
			rootPath = "";
			#end
			
		}
		
		Assets.defaultRootPath = rootPath;
		
		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		#end
		
		var data, manifest, library;
		
		#if kha
		
		null
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("null", library);
		
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("null");
		
		#else
		
		data = '{"name":null,"assets":"aoy8:positionzy4:sizezy4:typey5:IMAGEy2:idy51:assets%2FcloudInfoRoom%2Fimages%2FcloudInfoRoom.pngy6:lengthi58589goR0i58589R1zR2R3R4y55:assets%2FcloudInfoRoom%2Fimages%2FcloudInfoRoom_map.pngR6i2781goR0i61370R1zR2R3R4y48:assets%2FcloudInfoRoom%2Fimages%2Fitem_door1.pngR6i1520goR0i62890R1zR2R3R4y48:assets%2FcloudInfoRoom%2Fimages%2Fitem_door2.pngR6i891goR0i63781R1zR2R3R4y49:assets%2FcloudInfoRoom%2Fimages%2Fitem_statue.pngR6i2105goR0i65886R1zR2R3R4y58:assets%2FcloudInfoRoom%2Fimages%2Fitem_statue_animated.pngR6i3213goR0i69099R1zR2y4:TEXTR4y33:assets%2FcloudInfoRoom%2FNPC.jsonR6zgoR0i69099R1zR2R12R4y41:assets%2FcloudInfoRoom%2FRoomObjects.jsonR6i352goR0i69451R1zR2R12R4y36:assets%2FcloudInfoRoom%2FSounds.jsonR6zgh","rootPath":null,"version":2,"libraryArgs":["lib/cloudInfoRoom.pak","pak"],"libraryType":"lime.utils.PackedAssetLibrary"}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("cloudInfoRoom", library);
		data = '{"name":null,"assets":"aoy4:sizei11583y4:typey5:IMAGEy9:classNamey31:__ASSET__assets_images_body_pngy2:idy26:assets%2Fimages%2FBody.pnggoR0i8503R1R2R3y32:__ASSET__assets_images_douli_pngR5y27:assets%2Fimages%2FDouli.pnggoR0i2925R1R2R3y33:__ASSET__assets_images_douli2_pngR5y28:assets%2Fimages%2FDouli2.pnggoR0i6591R1R2R3y31:__ASSET__assets_images_face_pngR5y26:assets%2Fimages%2FFace.pnggoR0i1580R1R2R3y34:__ASSET__assets_images_glasses_pngR5y29:assets%2Fimages%2FGlasses.pnggoR0i6221R1R2R3y31:__ASSET__assets_images_hair_pngR5y26:assets%2Fimages%2FHair.pnggoR0i9136R1R2R3y30:__ASSET__assets_images_hat_pngR5y25:assets%2Fimages%2FHat.pnggoR0i2839R1R2R3y31:__ASSET__assets_images_hat2_pngR5y26:assets%2Fimages%2FHat2.pnggoR0i7292R1R2R3y33:__ASSET__assets_images_jacket_pngR5y28:assets%2Fimages%2FJacket.pnggoR0i4981R1R2R3y32:__ASSET__assets_images_jeans_pngR5y27:assets%2Fimages%2FJeans.pnggoR0i9547R1R2R3y35:__ASSET__assets_images_overcoat_pngR5y30:assets%2Fimages%2FOvercoat.pnggoR0i7078R1R2R3y32:__ASSET__assets_images_pants_pngR5y27:assets%2Fimages%2FPants.pnggoR0i58589R1R2R3y62:__ASSET__assets_images_rooms_cloudinforoom_cloudinforoom_a_pngR5y61:assets%2Fimages%2Frooms%2FcloudInfoRoom%2FcloudInfoRoom_A.pnggoR0i2781R1R2R3y66:__ASSET__assets_images_rooms_cloudinforoom_cloudinforoom_map_a_pngR5y65:assets%2Fimages%2Frooms%2FcloudInfoRoom%2FcloudInfoRoom_map_A.pnggoR0i1520R1R2R3y59:__ASSET__assets_images_rooms_cloudinforoom_item_door1_a_pngR5y58:assets%2Fimages%2Frooms%2FcloudInfoRoom%2Fitem_door1_A.pnggoR0i891R1R2R3y59:__ASSET__assets_images_rooms_cloudinforoom_item_door2_a_pngR5y58:assets%2Fimages%2Frooms%2FcloudInfoRoom%2Fitem_door2_A.pnggoR0i2105R1R2R3y60:__ASSET__assets_images_rooms_cloudinforoom_item_statue_a_pngR5y59:assets%2Fimages%2Frooms%2FcloudInfoRoom%2Fitem_statue_A.pnggoR0i4350R1R2R3y32:__ASSET__assets_images_shoes_pngR5y27:assets%2Fimages%2FShoes.pnggoR0i22600R1R2R3y35:__ASSET__assets_images_template_pngR5y30:assets%2Fimages%2FTemplate.pnggoR0i121186R1y5:SOUNDR3y32:__ASSET__assets_sounds_step1_wavR5y27:assets%2Fsounds%2FStep1.wavgoR0i5794R1R43R3y31:__ASSET__flixel_sounds_beep_oggR5y26:flixel%2Fsounds%2Fbeep.ogggoR0i33629R1R43R3y33:__ASSET__flixel_sounds_flixel_oggR5y28:flixel%2Fsounds%2Fflixel.ogggoR0i15744R1y4:FONTR3y35:__ASSET__flixel_fonts_nokiafc22_ttfR5y30:flixel%2Ffonts%2Fnokiafc22.ttfgoR0i29724R1R50R3y36:__ASSET__flixel_fonts_monsterrat_ttfR5y31:flixel%2Ffonts%2Fmonsterrat.ttfgoR0i519R1R2R3y36:__ASSET__flixel_images_ui_button_pngR5y33:flixel%2Fimages%2Fui%2Fbutton.pnggoR0i3280R1R2R3y39:__ASSET__flixel_images_logo_default_pngR5y36:flixel%2Fimages%2Flogo%2Fdefault.pnggh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		
		
		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		
		
		#end
		
	}
	
	
}


#if kha

null

#else

#if !display
#if flash

@:keep @:bind #if display private #end class __ASSET__assets_cloudinforoom_images_cloudinforoom_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_cloudinforoom_images_cloudinforoom_map_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_cloudinforoom_images_item_door1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_cloudinforoom_images_item_door2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_cloudinforoom_images_item_statue_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_cloudinforoom_images_item_statue_animated_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_cloudinforoom_npc_json extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_cloudinforoom_roomobjects_json extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_cloudinforoom_sounds_json extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_images_body_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_douli_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_douli2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_face_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_glasses_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_hair_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_hat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_hat2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_jacket_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_jeans_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_overcoat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_pants_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_rooms_cloudinforoom_cloudinforoom_a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_rooms_cloudinforoom_cloudinforoom_map_a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_rooms_cloudinforoom_item_door1_a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_rooms_cloudinforoom_item_door2_a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_rooms_cloudinforoom_item_statue_a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_shoes_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_template_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_step1_wav extends null { }
@:keep @:bind #if display private #end class __ASSET__flixel_sounds_beep_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends null { }
@:keep @:bind #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends null { }
@:keep @:bind #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_cloudinforoom_pak extends null { }
@:keep @:bind #if display private #end class __ASSET__manifest_cloudinforoom_json extends null { }
@:keep @:bind #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:image("assets/images/Body.png") #if display private #end class __ASSET__assets_images_body_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Douli.png") #if display private #end class __ASSET__assets_images_douli_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Douli2.png") #if display private #end class __ASSET__assets_images_douli2_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Face.png") #if display private #end class __ASSET__assets_images_face_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Glasses.png") #if display private #end class __ASSET__assets_images_glasses_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Hair.png") #if display private #end class __ASSET__assets_images_hair_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Hat.png") #if display private #end class __ASSET__assets_images_hat_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Hat2.png") #if display private #end class __ASSET__assets_images_hat2_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Jacket.png") #if display private #end class __ASSET__assets_images_jacket_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Jeans.png") #if display private #end class __ASSET__assets_images_jeans_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Overcoat.png") #if display private #end class __ASSET__assets_images_overcoat_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Pants.png") #if display private #end class __ASSET__assets_images_pants_png extends lime.graphics.Image {}
@:keep @:image("assets/images/rooms/cloudInfoRoom/cloudInfoRoom_A.png") #if display private #end class __ASSET__assets_images_rooms_cloudinforoom_cloudinforoom_a_png extends lime.graphics.Image {}
@:keep @:image("assets/images/rooms/cloudInfoRoom/cloudInfoRoom_map_A.png") #if display private #end class __ASSET__assets_images_rooms_cloudinforoom_cloudinforoom_map_a_png extends lime.graphics.Image {}
@:keep @:image("assets/images/rooms/cloudInfoRoom/item_door1_A.png") #if display private #end class __ASSET__assets_images_rooms_cloudinforoom_item_door1_a_png extends lime.graphics.Image {}
@:keep @:image("assets/images/rooms/cloudInfoRoom/item_door2_A.png") #if display private #end class __ASSET__assets_images_rooms_cloudinforoom_item_door2_a_png extends lime.graphics.Image {}
@:keep @:image("assets/images/rooms/cloudInfoRoom/item_statue_A.png") #if display private #end class __ASSET__assets_images_rooms_cloudinforoom_item_statue_a_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Shoes.png") #if display private #end class __ASSET__assets_images_shoes_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Template.png") #if display private #end class __ASSET__assets_images_template_png extends lime.graphics.Image {}
@:keep @:file("assets/sounds/Step1.wav") #if display private #end class __ASSET__assets_sounds_step1_wav extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,5,0/assets/sounds/beep.ogg") #if display private #end class __ASSET__flixel_sounds_beep_ogg extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,5,0/assets/sounds/flixel.ogg") #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends haxe.io.Bytes {}
@:keep @:font("C:/HaxeToolkit/haxe/lib/flixel/4,5,0/assets/fonts/nokiafc22.ttf") #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:keep @:font("C:/HaxeToolkit/haxe/lib/flixel/4,5,0/assets/fonts/monsterrat.ttf") #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/4,5,0/assets/images/ui/button.png") #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/4,5,0/assets/images/logo/default.png") #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}
@:keep @:file("export/windows/obj/tmp/manifest/cloudInfoRoom.json") #if display private #end class __ASSET__manifest_cloudinforoom_json extends haxe.io.Bytes {}
@:keep @:file("export/windows/obj/tmp/manifest/default.json") #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else

@:keep @:expose('__ASSET__flixel_fonts_nokiafc22_ttf') #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/nokiafc22.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_monsterrat_ttf') #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/monsterrat.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Monsterrat"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#end

#end
#end

#end
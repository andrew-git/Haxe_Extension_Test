package ;

//{region Imports
import nme.text.TextFormat;
import nme.display.Sprite;
import nme.events.Event;
import nme.Lib;
import nme.text.TextField;
//}endregion

/**
 * ...
 * @author Erica McCowan
 */

class Main extends Sprite 
{ // Start main.
	
	var inited:Bool;
	
	// My fields:
	public var didItWorkText:TextField;
	public var osTargetText:TextField;

	/* ENTRY POINT */
	
	function resize(e) 
	{
		if (!inited) init();
		// else (resize or orientation change)
	}
	
	function init() 
	{
		if (inited) return;
		inited = true;

		// (your code here)
		
		// Stage:
		// stage.stageWidth x stage.stageHeight @ stage.dpiScale
		
		// Assets:
		// nme.Assets.getBitmapData("img/assetname.jpg");
	}

	/* SETUP */

	public function new() 
	{
		super();	
		addEventListener(Event.ADDED_TO_STAGE, added);
		
		//{region Text Field Setup
		
		// Setting up the Did It Work text field:
		didItWorkText = new TextField();
		didItWorkText.defaultTextFormat = new TextFormat("_sans", 24, 0x222222);
		didItWorkText.width = 750;
		didItWorkText.x = 50;
		didItWorkText.y = 50;
		didItWorkText.selectable = false;
		
		// Setting up the OS Target Text:
		osTargetText = new TextField();
		osTargetText.defaultTextFormat = new TextFormat("_sans", 24, 0x222222);
		osTargetText.width = 750;
		osTargetText.x = 50;
		osTargetText.y = 75;
		osTargetText.selectable = false;
		
		//}endregion
		
		//{region Calling the extension:
		#if windows
		if ( Windows_Native.didItWork( false ) )
			didItWorkText.text = "Did it work? Yes it did, you sent True. Check the log output!";
		else
			didItWorkText.text = "Did it work? Yes it did, you sent False. Check the log output!";
			
		osTargetText.text = "What is the Extension target used? " + Windows_Native.whatIsTheExtensionTarget() + ". Check the log output!" ;
		
		#elseif mac
		if ( Mac_Native.didItWork( false ) )
			didItWorkText.text = "Did it work? Yes it did, you sent True. Check the log output!";
		else
			didItWorkText.text = "Did it work? Yes it did, you sent False. Check the log output!";
			
		osTargetText.text = "What is the Extension target used? " + Mac_Native.whatIsTheExtensionTarget() + ". Check the log output!" ;
		
		#elseif ios
		if ( IOS_Native.didItWork( false ) )
			didItWorkText.text = "Did it work? Yes it did, you sent True. Check the log output!";
		else
			didItWorkText.text = "Did it work? Yes it did, you sent False. Check the log output!";
			
		osTargetText.text = "What is the Extension target used? " + IOS_Native.whatIsTheExtensionTarget() + ". Check the log output!" ;
		
		#elseif android
		if ( Android_Native.didItWork( false ) )
			didItWorkText.text = "Did it work? Yes it did, you sent True. Check the log output!";
		else
			didItWorkText.text = "Did it work? Yes it did, you sent False. Check the log output!";
			
		osTargetText.text = "What is the Extension target used? " + Android_Native.whatIsTheExtensionTarget() + ". Check the log output!" ;
		
		#else
		didItWorkText.text = "There is no native extension for this platform";
		
		#end
		//}endregion
		
		// Adding the text to the screen:
		addChild(didItWorkText);
		addChild(osTargetText);
		
	} // End main.

	function added(e) 
	{
		removeEventListener(Event.ADDED_TO_STAGE, added);
		stage.addEventListener(Event.RESIZE, resize);
		#if ios
		haxe.Timer.delay(init, 100); // iOS 6
		#else
		init();
		#end
	}
	
	public static function main() 
	{
		// static entry point
		Lib.current.stage.align = nme.display.StageAlign.TOP_LEFT;
		Lib.current.stage.scaleMode = nme.display.StageScaleMode.NO_SCALE;
		Lib.current.addChild(new Main());
		
	}
	
}

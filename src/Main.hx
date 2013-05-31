package ;

//{region Imports
import nme.display.MovieClip;
import nme.text.TextFormat;
import nme.events.Event;
import nme.Lib;
import nme.text.TextField;
import haxe.macro.Context;
//}endregion

/**
 * ...
 * @author Erica McCowan
 */

class Main extends MovieClip 
{ // Start class Main.
	
	var inited:Bool;
	
	// My fields:
	public var didItWorkText:TextField;
	public var osTargetText:TextField;
	public static var Native:Dynamic;

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

		
	}

	/* SETUP */
	
	//{region Constructor:
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
		
		//************************************************************************
		// Setting up the call to the native lib, Note that if you are targeting a 
		// platform without a native dll then the Native variable will be null and 
		// you must take that into account in your code either by commenting out the 
		// Native calls or by wrapping them in a null check.
		//************************************************************************
		setNativeCall();
		
		//{region Calling the extension:
		
		//*****************************************************************************
		// Demonstrating the Native calls. There are two types of calls here, one 
		// way and two way. Two way returns data from the Native side and one way 
		// sends data to the native side. Note that if there is no applicable native 
		// side I have it set to throw an error without crashing, this is very 
		// important. Also note that you can pass a -DUseNative flag to the compiler 
		// to disable all native calls when they are properly warped in the Conditional 
		// Compilation flag.
		//*****************************************************************************
		#if Use_Native
		if ( Native != null )
		{ // Start if native not equal null.
			
			if ( Native.didItWork( false ) )
				didItWorkText.text = "Did it work? Yes it did, you sent True. Check the log output!";
			else
				didItWorkText.text = "Did it work? Yes it did, you sent False. Check the log output!";
				
			osTargetText.text = "What is the Extension target used? " + Native.whatIsTheExtensionTarget() + ". Check the log output!" ;
			
		} // End if native not equal null.
		else  // Else Native is null:
			didItWorkText.text = "There is no native extension for this platform";
		#else
			didItWorkText.text = "Native extensions are disabled. Check the readme tile for how to enable them.";
			
		#end
		
		//}endregion
		
		// Adding the text to the screen:
		addChild(didItWorkText);
		addChild(osTargetText);
		
	} // End main.
	//}endregion
	
	//{region Set Native Call
	function setNativeCall( ) : Void
	{ // Start setNativeCall.
		
		//{region Calling the extension:
		#if windows
		Native = Windows_Native;
		
		#elseif mac
		Native = Mac_Native;
		
		#elseif ios
		Native = IOS_Native;
		
		#elseif android
		Native = Android_Native;
		
		#else
		Native = null;
		
		#end
		//}endregion
		
	} // End // Start setNativeCall.
	//} End Region

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
	
} // End class Main.

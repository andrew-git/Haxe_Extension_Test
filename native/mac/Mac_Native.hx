package ;


import cpp.Lib;


class Mac_Native 
{ // Start class Mac_Native.
	
	public static function didItWork ( p_TwoWay:Bool ) : Bool 
	{
		
		return test_did_it_work( p_TwoWay );
		
	}

	public static function whatIsTheExtensionTarget () : String
	{
		return what_is_the_extension_target();
	}
	
	private static var test_did_it_work = Lib.load ( "mac_native", "test_did_it_work", 1 );
	private static var what_is_the_extension_target = Lib.load ( "mac_native", "what_is_the_extension_target", 0 );
	
} // End class Mac_Native.
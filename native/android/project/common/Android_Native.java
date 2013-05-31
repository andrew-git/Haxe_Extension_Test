class Android_Native 
{ // Start class Android_Native.
	
	
	public static Boolean didItWork ( Boolean p_TwoWay ) 
	{ // Start didItWork.

		if( p_TwoWay )
			System.out.println( "Yes it worked, you sent true." );
		else
			System.out.println( "Yes it worked, you sent false.");

		return true;

	} // End didItWork.


	public static String whatIsTheExtensionTarget () 
	{ // Start whatIsTheExtensionTarget.

		String message;
		message = "Windows";

		System.out.println( message );

		return message;

	} // End whatIsTheExtensionTarget
	
} // End class Android_Native.
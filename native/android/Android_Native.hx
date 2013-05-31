package ;

import nme.JNI;

class Android_Native 
{ // Start class Android_Native.
	
	public static function didItWork ( p_TwoWay:Bool ) : Bool 
	{
		if ( jni_did_it_work == null)
			jni_did_it_work = JNI.createStaticMethod ( "Android_Native", "didItWork", "()B" );

		return jni_did_it_work( p_TwoWay );		
	}

	public static function whatIsTheExtensionTarget () : String
	{
		if ( jni_what_is_the_extension_target == null)
			jni_what_is_the_extension_target = JNI.createStaticMethod ( "Android_Native", "whatIsTheExtensionTarget", "()Ljava/lang/String;" );

		return jni_what_is_the_extension_target();
	}
	
	private static var jni_did_it_work:Dynamic;
	private static var jni_what_is_the_extension_target:Dynamic;

	
} // End class Android_Native.
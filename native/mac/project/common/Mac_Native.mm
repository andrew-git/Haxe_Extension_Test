
#import "../include/Mac_Native.h"
#import <Foundation/Foundation.h>

namespace mac_native 
{ // Start namespace mac_native.
	
	
	const bool didItWork ( bool p_TwoWay ) 
	{ // Start didItWork.

		if( p_TwoWay )
			NSLog( @"Yes it worked, you sent true." );
		else
			NSLog( @"Yes it worked, you sent false." );

		return true;

	} // End didItWork.


	const char* whatIsTheExtensionTarget () 
	{ // Start whatIsTheExtensionTarget.

		char* message;
		message = "Mac OS";

		NSLog( [NSString stringWithCString:message encoding:NSASCIIStringEncoding] );

		return message;
		
	} // End whatIsTheExtensionTarget
	
	
} // End namespace mac_native.
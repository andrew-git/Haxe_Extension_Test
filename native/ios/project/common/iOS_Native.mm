
#import "../include/iOS_Native.h"
#import <Foundation/Foundation.h>

namespace ios_native 
{ // Start namespace ios_Native.
	
	
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
		message = "iOS";

		NSLog( [NSString stringWithCString:message encoding:NSASCIIStringEncoding] );

		return message;
		
	} // End whatIsTheExtensionTarget
	
	
} // End namespace ios_Native.
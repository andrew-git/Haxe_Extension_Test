#include "../include/Windows_Native.h"

namespace windows_native 
{ // Start namespace windows_native.
	
	
	const bool didItWork ( bool p_TwoWay ) 
	{ // Start didItWork.

		if( p_TwoWay )
			cout << "Yes it worked, you sent true." << endl;
		else
			cout << "Yes it worked, you sent false." << endl;

		return true;

	} // End didItWork.


	string whatIsTheExtensionTarget () 
	{ // Start whatIsTheExtensionTarget.

		string message;
		message = "Windows";

		cout << message << endl;

		return message;

	} // End whatIsTheExtensionTarget
	
} // End namespace windows_native.
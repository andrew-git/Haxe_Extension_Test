#ifndef IPHONE
#define IMPLEMENT_API
#endif

#include <hx/CFFI.h>
#include "iOS_Native.h"
#include <stdio.h>

using namespace ios_native;


static value test_did_it_work ( bool p_TwoWay ) 
{
	return alloc_bool ( didItWork( p_TwoWay ) );
	
}
DEFINE_PRIM ( test_did_it_work, 1 );


static value what_is_the_extension_target () 
{
	
	return alloc_string ( whatIsTheExtensionTarget() );
	
}
DEFINE_PRIM ( what_is_the_extension_target, 0 );



extern "C" void test_main() 
{
	
	// Here you could do some initialization, if needed
	
}
DEFINE_ENTRY_POINT( test_main );

extern "C" int test_register_prims () { return 0; }
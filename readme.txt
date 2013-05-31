Haxe Extension Test - Version 1.0.1

By Erica McCowan

This project uses the Haxe programing language as well as the NME framework.

The project itself was built in Flash Develop and Sublime. The purpose of this project is to demonstrate the ability of Hax to use Native Code Extensions in order to integrate fully with the Target Platform and use any and all functionality that may be the preserve of that particular Target. An example of this would be the create an extension to link the project to Objective C when targeting iOS and then integrate Game Centre and iAd support.

Instead of creating one big extension what I did was create several small extensions based on target platform. This was done to improve deployment speed and make debugging easier. I have added several hooks in the code to mostly automate the usage of individual target ndlls as well as note on why things were done a certain way.

To use this project go to the /scripts folder and run the build script* for your chosen target. When the compilation is done run either the test or run script*. To test the ability to disable native code with a define*, open up the application .nmml file and remove the following line:
	<haxedef name="Use_Native" />


*The scripts are in 2 formats: .bat for windows and .sh for Mac/Linux.

*Note that conditional flags doe not need to be set in the .nmml file but could be set when calling the compiler by passing a -dUse_Native flag.

Copyright 2013 Erica McCowan, Abyss Games Inc
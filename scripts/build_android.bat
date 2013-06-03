cls
REM This file is provided as an example only.
REM All contents in this file and its accompanying project
REM are Copyright Erica McCowan and Abyss Games Inc.
REM http://www.ericamccowan.com
REM
cd ..
REM Changing into the Extensions Directory:
cd Native\android\project\
REM Compiling the Extensions:
haxelib run hxcpp Build.xml -Dandroid -clean
REM Changing back to the project directory
cd ..\..\..
REM Compiling the main program:
nme build application.nmml android -clean
cd scripts
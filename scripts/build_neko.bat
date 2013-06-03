cls
REM This file is provided as an example only.
REM All contents in this file and its accompanying project
REM are Copyright Erica McCowan and Abyss Games Inc.
REM http://www.ericamccowan.com
REM
cd ..
REM Changing into the Extensions Directory:
cd Native\windows\project\
REM Compiling the Extensions:
haxelib run hxcpp Build.xml -Dneko -clean
REM Changing back to the project directory
cd ..\..\..
REM Compiling the main program:
nme build application.nmml neko -clean
cd scripts
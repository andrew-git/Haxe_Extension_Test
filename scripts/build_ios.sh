#!/bin/sh
clear
echo This file is provided as an example only.
echo All contents in this file and its accompanying project
echo are Copyright Erica McCowan and Abyss Games Inc.
echo http://www.ericamccowan.com
echo
cd ..
echo Changing into the Extensions Directory:
cd native/ios/project/
echo Compiling the Extensions:
haxelib run hxcpp Build.xml -Dios -clean
echo Changing back to the project directory
cd ../../..
echo Compiling the main program:
nme build application.nmml ios -clean
cd scripts
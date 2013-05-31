clear
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
clear
cd ..
echo Changing into the Extensions Directory:
cd native/mac/project/
echo Compiling the Extensions:
haxelib run hxcpp Build.xml -Dmac -clean
echo Changing back to the project directory
cd ../../..
echo Compiling the main program:
nme build application.nmml mac -clean
cd scripts
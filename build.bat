@echo off

echo Clean up environment
call %~dp0\\clean.bat

echo Setup directory structure
mkdir build\\
mkdir build\\deps
mkdir build\\deps\\node
mkdir build\\scripts

echo Install node
curl http://nodejs.org/dist/v0.10.32/node.exe -o build\\deps\\node\\node.exe

echo Copy scripts
xcopy /s %~dp0\\fixtures\\scripts build\\scripts

echo Copy package.json
copy %~dp0\\fixtures\\package.json build\\deps\\package.json

cd build\\deps
echo Install npm and hoodie-cli
call npm install

cd ..
echo Git clone my-first-hoodie.git
git clone https://github.com/hoodiehq/my-first-hoodie.git app

echo Remove .git
rmdir app\\.git /s /q

echo Install my-first-hoodie's dependencies
cd app
call npm install

cd ..\\..

echo Install couchdb
call %~dp0\\couch.bat

@echo off

echo Download setup-couch.exe
curl http://mirror.netcologne.de/apache.org/couchdb/binary/win/1.6.1/setup-couchdb-1.6.1_R16B02.exe -o build\\setup-couch.exe

echo Extract setup-couch.exe using innounp
%~dp0\\fixtures\\innounp\\innounp -x -y -dbuild\\deps build\\setup-couch.exe

echo Delete setup-couch.exe
del build\\setup-couch.exe

echo Rename {app} to couchdb
ren build\\deps\\{app} couchdb

echo Patch erl.ini
copy /y  %~dp0\\fixtures\\erl.ini build\\deps\\couchdb\\bin\\erl.ini

echo Remove {tmp}
rmdir build\\deps\\{tmp} /s /q

echo Remove install_script.iss
del build\\deps\\install_script.iss

@set COUCH_PATH=%~dp0\\..\\deps\\couchdb\\
@pushd  "%~dp0\\..\\app" & "%~dp0\\hoodie.cmd" start & popd

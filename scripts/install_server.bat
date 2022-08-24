@echo off

call variables.bat

cd ..\steam
rem Throws "Error! App '90' state is 0x6 after update job" when using +login anonymous.
steamcmd +login %USERNAME% %PASSWORD% +force_install_dir ..\server +app_update 90 validate +quit
cd ..\scripts
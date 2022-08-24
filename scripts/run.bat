@echo off
setlocal enabledelayedexpansion

call variables.bat

for /l %%n in () do (
  if not [%1] == [fast] ( 
    call install_server.bat
    call configure.bat
  )
  
  cd ..\server
  hlds.exe -console -game cstrike +maxplayers %MAX_PLAYERS% +map %DEFAULT_MAP%
  cd ..\scripts
)
@echo off

REM installing Boxstarter from web and chocolatey 

powershell -NoProfile -ExecutionPolicy bypass -command ". { iwr -useb https://boxstarter.org/bootstrapper.ps1 } | iex; Get-Boxstarter -Force"

REM powershell -NoProfile -ExecutionPolicy bypass -command "Install-BoxstarterPackage -PackageName https://gist.githubusercontent.com/makerling/6af68b1c6bc636549b36ec19c41575d7/raw/3d924ff1b7ea9000b2c310ae07d04b7ed1674ce0/FLEx9-dev-setup.ps1"
REM no reboot boxstarter parameter
powershell -NoProfile -ExecutionPolicy bypass -command "START http://boxstarter.org/package/nr/url?https://gist.githubusercontent.com/makerling/6af68b1c6bc636549b36ec19c41575d7/raw/3d924ff1b7ea9000b2c310ae07d04b7ed1674ce0/FLEx9-dev-setup.ps1"

echo "finished!!"

PAUSE

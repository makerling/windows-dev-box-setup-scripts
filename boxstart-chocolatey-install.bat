@echo off

REM installing Boxstarter and chocolatey from web - ensures latest version is always installed

powershell -NoProfile -ExecutionPolicy bypass -command ". { iwr -useb https://boxstarter.org/bootstrapper.ps1 } | iex; Get-Boxstarter -Force"

REM installing/running Boxstarter package from gist see: https://boxstarter.org/InstallingPackages

powershell -NoProfile -ExecutionPolicy bypass -command "Install-BoxstarterPackage -DisableReboots -PackageName https://gist.githubusercontent.com/makerling/6af68b1c6bc636549b36ec19c41575d7/raw/3d924ff1b7ea9000b2c310ae07d04b7ed1674ce0/FLEx9-dev-setup.ps1"

echo "Script has completed, you can close the console and restart your machine."

PAUSE

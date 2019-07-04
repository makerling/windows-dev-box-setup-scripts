@echo off

REM installing Boxstarter from web and chocolatey 

powershell -NoProfile -ExecutionPolicy bypass -command ". { iwr -useb https://boxstarter.org/bootstrapper.ps1 } | iex; Get-Boxstarter -Force"

powershell -NoProfile -ExecutionPolicy bypass -command ". '%~dp0dev_app.ps1'"

echo "finished!!"

PAUSE

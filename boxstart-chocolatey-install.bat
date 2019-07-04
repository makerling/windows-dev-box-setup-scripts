@echo off

:: installing Boxstarter from web and chocolatey 

powershell -NoProfile -ExecutionPolicy bypass -command ". { iwr -useb https://boxstarter.org/bootstrapper.ps1 } | iex; Get-Boxstarter -Force"


echo "finished!!"

PAUSE

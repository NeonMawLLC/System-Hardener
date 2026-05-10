@echo off
:: Armor: Service Hardening
:: Purpose: Disable non-essential services to reduce attack surface.

echo Initializing System Hardening...

:: Disable Print Spooler (Common vulnerability node)
sc config "Spooler" start= disabled
net stop "Spooler"

:: Disable Remote Registry
sc config "RemoteRegistry" start= disabled
net stop "RemoteRegistry"

:: Disable Windows Search (Performance optimization)
sc config "WSearch" start= disabled
net stop "WSearch"

echo Hardening complete. Non-essential nodes silenced.
pause

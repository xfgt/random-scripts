@echo off
cls && echo. && wmic service list brief | findstr "sshd" && echo. && pause 
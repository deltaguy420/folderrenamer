@echo off
echo === Folder Renamer ===
set /p oldname=Enter the current folder name: 
set /p newname=Enter the new folder name: 

if "%oldname%"=="" (
    echo Error: Current folder name cannot be empty.
    pause
    exit /b 1
)
if "%newname%"=="" (
    echo Error: New folder name cannot be empty.
    pause
    exit /b 1
)

if not exist "%oldname%\" (
    echo Error: Folder '%oldname%' does not exist.
    pause
    exit /b 1
)

if exist "%newname%\" (
    echo Error: Folder '%newname%' already exists.
    pause
    exit /b 1
)

ren "%oldname%" "%newname%"
echo Success: Folder renamed from '%oldname%' to '%newname%'!
pause
@echo off
setlocal enabledelayedexpansion

set "SUBMODULE_PATH=delete-ALL-files"

git submodule deinit -f "%SUBMODULE_PATH%"

rmdir /s /q ".git\modules\%SUBMODULE_PATH%"

rmdir /s /q "%SUBMODULE_PATH%"

if exist ".gitmodules" (
    notepad .gitmodules
)

pause

git rm --cached "%SUBMODULE_PATH%"

git add .gitmodules
git commit -m "Entferne Submodul: %SUBMODULE_PATH%"

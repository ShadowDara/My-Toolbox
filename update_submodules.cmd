rem to update the submodules

@echo off

:start
git submodule update --remote
pause
goto :start

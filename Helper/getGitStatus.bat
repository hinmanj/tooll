@echo off
for /f "delims=" %%a in ('git rev-parse HEAD') do @set revisionHash=%%a
for /f "delims=" %%a in ('git rev-parse --abbrev-ref HEAD') do @set branch=%%a
SET filename=%1
SET filename=%filename:"=%
SET filename="%filename%\generateBuildProperties.vbs"
call %filename% %2 666 %branch% %revisionHash%

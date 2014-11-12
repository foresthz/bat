echo off
set cur=%cd%
:findgit
cd .git
if %errorlevel% equ 1  ( goto :cdupdir ) else (
 echo "now in .git" 
 cd ..
 goto :exit 
)



:cdupdir
set cur1=%cd%
cd ..
set cur2=%cd%
echo off
if %cur1%==%cur2% ( echo "path not changed" ) else ( goto :findgit )
rem if %errorlevel% equ 1 ( echo "root now" ) else ( echo %~d0 )

:exit
echo "exit"
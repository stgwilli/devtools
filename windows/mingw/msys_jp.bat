@echo off
rem Copyright (C):  2001, 2002, 2003, 2004, 2005  Earnie Boyd
rem   mailto:earnie@users.sf.net
rem This file is part of Minimal SYStem
rem   http://www.mingw.org/msys.shtml
rem
rem File:	    msys.bat
rem Revision:	    2.4
rem Revision Date:  December 8th, 2005

rem ember to set the "Start in:" field of the shortcut.
rem A value similar to C:\msys\1.0\bin is what the "Start in:" field needs
rem to represent.

rem ember value of GOTO: is used to know recursion has happened.
if "%1" == "GOTO:" goto %2

set WD=%~dp0\bin

rem ember command.com only uses the first eight characters of the label.
goto _WindowsNT

set COMSPEC=%WINDIR%\SysWOW64\cmd.exe
%COMSPEC% /c %0 %1 %2 %3 %4 %5 %6 %7 %8 %9

set MSYSCON=sh.exe
set MSYSTEM=MINGW32
set DISPLAY=
goto startsh


:startsh
if NOT EXIST %WD%sh.exe goto notfound
start %WD%sh --login -i
exit

:EOF

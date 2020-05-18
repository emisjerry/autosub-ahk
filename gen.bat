@echo off
echo *** Loading AutoSub, please wait ...
set LANG=%1
set INPUT=%2
set OUTPUT=%3
set REAL_OUTPUT=%4
echo %DATE% %TIME% autosub -S %LANG% -i %INPUT% -o %OUTPUT% > gen.log
rem Append -F txt, if you want a text output
cd autosub
autosub -S %LANG% -i %INPUT% -o %OUTPUT% -et 50 -mxrs 6 -mxcs 0.1
cd ..
rem Open the output
%REAL_OUTPUT%

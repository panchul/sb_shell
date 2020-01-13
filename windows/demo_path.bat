rem To get the base folder of the script being executed:

set SCRIPT_DIR=%~dp0
echo %SCRIPT_DIR:~0,-1%

rem  `:~n,m` syntax, removes the final backslash.  
rem  More on batch paramaters:
rem  https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/call#batch-parameters

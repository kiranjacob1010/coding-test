echo off
setlocal

echo === Activating virtual environment...
call venv\Scripts\activate.bat

echo === Running Robot Framework tests...
robot tests/

echo === Deactivating virtual environment...
:: No need to call deactivate explicitly in Windows batch — closing the shell or ending the script exits venv.

echo ✅ Tests completed!

endlocal
pause
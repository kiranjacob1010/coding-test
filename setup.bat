@echo off
setlocal

echo === creating virtual environment...creating
python -m venv venv

echo === Activating virtual environment...creating
call venv\Scripts\activate.bat

echo === Upgrading pip...
python -m pip install --upgrade pip

echo === installing requirements from requirements.txt
pip install -r requirements.txt

echo.
echo    Setup Complete! to activate the virtual environment later, run:
echo.
echo    venv\Scripts\activate.bat
echo.

endlocal
pause


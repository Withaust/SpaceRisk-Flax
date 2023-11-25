@echo off

rmdir /s /q "FlaxEngine"
git clone https://github.com/FlaxEngine/FlaxEngine
call Clear.bat
call Build.bat
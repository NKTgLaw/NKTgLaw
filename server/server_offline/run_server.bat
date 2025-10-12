@echo off
echo === Starting NKTg Backend ===

REM Prefer running the prebuilt executable from the root directory
IF EXIST ..\..\nktg.exe (
    echo ✅ Running nktg.exe from root directory
    ..\..\nktg.exe
) ELSE IF EXIST .\build\nktg.exe (
    echo ✅ Running nktg.exe from build directory
    .\build\nktg.exe
) ELSE (
    echo ❌ Error: nktg.exe not found in either root or build directory
)

pause

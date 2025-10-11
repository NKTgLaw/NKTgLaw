@echo off
echo === Building nktg.exe ===

REM Create build folder if it doesn't exist
if not exist build (
    mkdir build
)

cd build

REM Run CMake and build
cmake ../..
if %errorlevel% neq 0 (
    echo ❌ CMake configuration failed.
    pause
    exit /b %errorlevel%
)

cmake --build . --config Release
if %errorlevel% neq 0 (
    echo ❌ Build failed.
    pause
    exit /b %errorlevel%
)

echo ✅ Build completed. You can now run nktg.exe
pause

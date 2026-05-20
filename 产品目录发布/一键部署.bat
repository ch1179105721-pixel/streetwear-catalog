@echo off
echo ==========================================
echo    Streetwear Catalog One-Click Deploy
echo ==========================================
echo.
echo [1/4] Initializing local repository...
git init >nul 2>&1

echo [2/4] Setting up remote...
git remote remove origin >nul 2>&1
git remote add origin https://github.com/ch1179105721-pixel/streetwear-catalog.git

echo [3/4] Preparing code...
git add index.html
git commit -m "Initial deploy from Desktop" >nul 2>&1
git branch -m main >nul 2>&1

echo [4/4] Pushing to GitHub...
echo If a login window pops up, please authorize it.
echo.
git push -u origin main --force

if %ERRORLEVEL% equ 0 (
    echo.
    echo ==========================================
    echo    SUCCESS! Deployment Complete.
    echo    URL: https://ch1179105721-pixel.github.io/streetwear-catalog/
    echo ==========================================
) else (
    echo.
    echo ==========================================
    echo    FAILED. Please check your network or 
    echo    GitHub login status.
    echo ==========================================
)
pause

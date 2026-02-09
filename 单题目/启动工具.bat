@echo off
chcp 65001 >nul
title 积木编程AI出题工具
echo.
echo ========================================
echo    积木编程AI出题工具
echo ========================================
echo.
echo 正在启动服务器...
echo.

cd /d "%~dp0"

python -m http.server 8080 >nul 2>&1
if %errorlevel% neq 0 (
    echo [错误] 未检测到Python环境
    echo.
    echo 请安装Python 3.x 或直接双击 AI出题工具.html 打开
    echo.
    pause
    exit
)

start http://localhost:8080/AI出题工具.html

echo 服务器已启动！
echo.
echo 访问地址: http://localhost:8080/AI出题工具.html
echo.
echo 按 Ctrl+C 停止服务器
echo.

python -m http.server 8080

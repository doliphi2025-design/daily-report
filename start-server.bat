@echo off
chcp 65001 >nul
echo ========================================
echo   纺织化纤行业日报 - 内网 Web 服务器
echo ========================================
echo.
echo 服务器启动中...
echo.
echo 访问地址:
echo   本机：http://localhost:8080
echo   内网：http://10.17.48.5:8080
echo.
echo 按 Ctrl+C 停止服务器
echo ========================================
echo.
cd /d "%~dp0"
python -m http.server 8080

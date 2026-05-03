@echo off
chcp 65001 > nul
title T-Guard подключение

echo.
echo =========================================
echo     Подключение к mesh-сети T-Guard!
echo        Сделано TriAngels
echo =========================================
echo.

REM Проверка установлен ли Tailscale
if not exist "C:\Program Files\Tailscale\tailscale.exe" (
    echo Tailscale не установлен!
    echo.
    echo Скачайте и установите:
    echo https://tailscale.com/download/windows
    echo.
    pause
    exit
)

echo ?? Подключение к mesh-сети T-Guard...
echo.

REM Подключение к серверу
"C:\Program Files\Tailscale\tailscale.exe" up --login-server https://login.t-guard.net

timeout /t 2 > nul

echo.
echo ?? Открываем страницу входа...
start https://login.t-guard.net

echo.
echo ? После входа подключение будет завершено.
echo.

pause
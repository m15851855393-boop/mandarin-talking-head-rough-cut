@echo off
setlocal
chcp 65001 >nul
title 中文口播剪辑 Skill - Windows 安装
echo.
echo 正在安装 Python、FFmpeg 和全部依赖，请不要关闭窗口...
echo.
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0bootstrap_windows.ps1" -ProjectDir "%~dp0.."
set "INSTALL_EXIT=%ERRORLEVEL%"
echo.
if not "%INSTALL_EXIT%"=="0" (
  echo 安装没有完成。请把本窗口中最后一段错误信息发给技术支持，但不要发送 config.json。
) else (
  echo 安装成功。现在可以回到 Agent 客户端配置用户自己的火山 ASR。
)
echo.
pause
exit /b %INSTALL_EXIT%

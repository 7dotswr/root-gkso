@title HTTP Server - Status: Starting
@set /p switch="" < server_config.txt
@echo Verify cmd: http-server %switch%
@choice /c yn /n /m "Accept? {y/n}"
set r=%errorlevel%
cls
@title HTTP Server - Status: Running
@notifu /p "Server started" /m "Click on this prompt to enable server."
@if %r% equ 1 http-server %switch%
@title HTTP Server - Status: Stopping
@timeout 3 > nul
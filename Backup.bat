@echo off
cls
FOR /F "tokens=1,2,3 delims=/ " %%a in ("%DATE%") do (
set DIA=%%a
set MES=%%b
set ANO=%%c
)

set FORMATO=%DIA%/%MES%/%ANO%

@echo.
@echo.
@echo       *******************************************************************
@echo       *******************************************************************
@echo       ***                                                             ***
@echo       ***   COMANDO DE POLICIAMENTO DE AREA ONZE - AGENCIA REGIONAL   ***
@echo       ***    SISTEMA DE BACKUP AUTOMATICO DO BANCO DE DADOS V 1.0     ***
@echo       ***                  CRIADO POR CB PM COLLURA                   ***
@echo       ***                       DATA %FORMATO%                       ***
@echo       *** 							      ***
@echo       *******************************************************************
@echo       *******************************************************************
@echo.
@echo.
@echo                *** O BACKUP SERA INICIADO EM ALGUNS SEGUNDOS *** 
@ping 127.0.0.1 -n 8 -w 1000 > nul
@echo.
@echo.

h:
xcopy *.* /e /y /f /h /k /d f:

cls

@echo.
@echo       *******************************************************************
@echo       *******************************************************************
@echo       ***                                                             ***
@echo       ***               BACKUP REALIZADO COM SUCESSO !                ***
@echo       ***      ARQUIVOS SALVOS NA UNIDADE 'F' E 'UNIDADE DE DVD'      ***
@echo       ***                                                             ***
@echo       *******************************************************************
@echo       *******************************************************************
@echo.
@echo.
pause
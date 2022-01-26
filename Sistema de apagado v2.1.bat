@echo off
title Sistema de apagado && color 04
:INICIO
cls
echo Copyright (C) Netzahualcoyotl Humberto Plata Rodriguez.
echo -----------------------------------------------------------
echo Elija una opcion...
echo .             (1)"Activar temporizador predefinido" 
echo .             (2)"Activar temporizador personalizado" 
echo .             (3)"Informacion"
echo .             (4)"Cancelar apagado"
echo .             (5)"Salir"
set/p "mainselect="
if %mainselect%==1 goto TEMP
if %mainselect%==2 goto PERTEMP
if %mainselect%==3 goto INFO
if %mainselect%==4 goto CANCELDESK
if %mainselect%==5 goto END
if not %mainselect%==1 goto INICIO
if not %mainselect%==2 goto INICIO
if not %mainselect%==3 goto INICIO
if not %mainselect%==4 goto INICIO
if not %mainselect%==5 goto INICIO
:INFO
cls
echo Copyright (C) Netzahualcoyotl Humberto Plata Rodriguez el 16/12/2021
echo Inspirado en el video "TRUCOS con tu PC más mórbidos y épicos" de YAMPOL
echo https://www.youtube.com/watch?v=DYKgx3sssU8
echo En memoria de Abril Estefania Sandoval Miramontes, una buena amiga, y una gran persona
pause
cls
goto INICIO
:CANCELDESK
cls
echo Copyright (C) Netzahualcoyotl Humberto Plata Rodriguez.
echo -----------------------------------------------------------
echo ¿Quiere activar el temporizador de apagado? (S/N)
set/p "bane="
if %bane%==S goto CANCEL
if %bane%==s goto CANCEL
if %bane%==N goto INICIO
if %bane%==n goto INICIO
if not %bane%==S goto CANCELDESK
if not %bane%==s goto CANCELDESK
if not %bane%==N goto CANCELDESK
if not %bane%==n goto CANCELDESK
:CANCEL
shutdown.exe -a
goto INICIO
:TEMP
cls
echo Copyright (C) Netzahualcoyotl Humberto Plata Rodriguez.
echo -----------------------------------------------------------
echo ¿Quiere activar el temporizador de apagado? (S/N)
set/p "bati="
if %bati%==S goto SELECTIME
if %bati%==s goto SELECTIME
if %bati%==N goto END
if %bati%==n goto END
if not %bati%==S goto TEMP
if not %bati%==s goto TEMP
if not %bati%==N goto TEMP
if not %bati%==n goto TEMP	
:SELECTIME
cls
echo Copyright (C) Netzahualcoyotl Humberto Plata Rodriguez.
echo -----------------------------------------------------------
echo ¿Por cuanto tiempo? 5 minutos, 10 minutos, 15 minutos, 30 minutos, 45 minutos, 60 minutos, 90 minutos, 120 minutos,
set/p "time="
if %time%==5 goto 5MIN
if %time%==10 goto 10MIN
if %time%==15 goto 15MIN 
if %time%==30 goto 30MIN
if %time%==45 goto 45MIN
if %time%==60 goto 60MIN
if %time%==90 goto 90MIN
if %time%==120 goto 120MIN
if %time%==5 minutos goto 5MIN
if %time%==10 minutos goto 10MIN
if %time%==15 minutos goto 15MIN 
if %time%==30 minutos goto 30MIN
if %time%==45 minutos goto 45MIN
if %time%==60 minutos goto 60MIN
if %time%==90 minutos goto 90MIN
if %time%==120 minutos goto 120MIN
if not %time%==5 goto SELECTIME
if not %time%==10 goto SELECTIME
if not %time%==15 goto SELECTIME
if not %time%==30 goto SELECTIME
if not %time%==45 goto SELECTIME
if not %time%==60 goto SELECTIME
if not %time%==90 goto SELECTIME
if not %time%==120 goto SELECTIME
if not %time%==5 minutos goto SELECTIME
if not %time%==10 minutos goto SELECTIME
if not %time%==15 minutos goto SELECTIME
if not %time%==30 minutos goto SELECTIME
if not %time%==45 minutos goto SELECTIME
if not %time%==60 minutos goto SELECTIME
if not %time%==90 minutos goto SELECTIME
if not %time%==120 minutos goto SELECTIME
:5MIN
shutdown.exe -s -t 300 -c "El equipo se apagara en 5 minutos" 
goto END
:10MIN
shutdown.exe -s -t 600 -c "El equipo se apagara en 10 minutos" 
goto END
:15MIN
shutdown.exe -s -t 900 -c "El equipo se apagara en 15 minutos" 
goto END
:30MIN
shutdown.exe -s -t 1800 -c "El equipo se apagara en 30 minutos" 
goto END
:45MIN
shutdown.exe -s -t 2700 -c "El equipo se apagara en 45 minutos" 
goto END
:60MIN
shutdown.exe -s -t 3600 -c "El equipo se apagara en 60 minutos" 
goto END
:90MIN
shutdown.exe -s -t 5400 -c "El equipo se apagara en 90 minutos" 
goto END
:120MIN
shutdown.exe -s -t 7200 -c "El equipo se apagara en 120 minutos"
goto END
:PERTEMP
cls
echo Copyright (C) Netzahualcoyotl Humberto Plata Rodriguez.
echo -----------------------------------------------------------
echo ¿Quiere activar el temporizador de apagado personalizado? (S/N)
set/p "joke="
if %joke%==S goto SELECTPERTIME
if %joke%==s goto SELECTPERTIME
if %joke%==N goto END
if %joke%==n goto END
if not %joke%==S goto PERTEMP
if not %joke%==s goto PERTEMP
if not %joke%==N goto PERTEMP
if not %joke%==n goto PERTEMP	
:SELECTPERTIME
cls
echo Copyright (C) Netzahualcoyotl Humberto Plata Rodriguez.
echo -----------------------------------------------------------
echo ¿Por cuantas horas?
set/p "HH="
echo ¿Por cuantos minutos?
set/p "MM=" 
echo ¿Por cuantos segundos?
set/p "SS=" 
set/a pertime=((%HH%*3600) + (%MM%*60) + %SS%)
echo El equipo se apagara en %HH% Horas %MM% minutos con %SS% segundos ¿de acuerdo? (S/N)
set/p "manta="
if %manta%==S goto PERTEMPSET
if %manta%==s goto PERTEMPSET
if %manta%==N goto END
if %manta%==n goto END
if not %manta%==S goto INICIO
if not %manta%==s goto INICIO
if not %manta%==N goto INICIO
if not %manta%==n goto INICIO
:PERTEMPSET
shutdown.exe -s -t %pertime% -c "El equipo se apagara en %HH% Horas %MM% minutos con %SS% segundos" 
goto INICIO
:END

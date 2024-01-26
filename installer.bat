@echo off

title Grub2Win Command-line Installer
echo Welcome to the Grub2Win 3.0 CMD Installer.

:choice
set /P c=Do you want to install Grub2Win [Y/N]?
if /I "%c%" EQU "Y" goto :installer
if /I "%c%" EQU "N" goto :exit

:installer
set /P d=Do you want to install Grub2Win on your C:\ drive [Y/N]?
if /I "%d%" EQU "Y" goto :installonC
if /I "%d%" EQU "N" goto :pickadrive

:pickadrive
set DriveLetter=
set /p DriveLetter=Please enter the drive letter to install Grub2Win on: 
set "DriveLetter=%DriveLetter%:"
goto :installonotherdrive

:installonotherdrive
echo Beginning installation...
cd %DriveLetter%
xcopy.exe grub2 %DriveLetter% /E
set /P d=What drive is your Windows installation on[Y/N]?
if /I "%d%" EQU "A" cd A:\
if /I "%d%" EQU "A" cd A:\
if /I "%d%" EQU "A" cd A:\
if /I "%d%" EQU "A" cd A:\
if /I "%d%" EQU "A" cd A:\
if /I "%d%" EQU "A" cd A:\
if /I "%d%" EQU "A" cd A:\
if /I "%d%" EQU "A" cd A:\
if /I "%d%" EQU "A" cd A:\
if /I "%d%" EQU "A" cd A:\
if /I "%d%" EQU "A" cd A:\
if /I "%d%" EQU "A" cd A:\
if /I "%d%" EQU "A" cd A:\
if /I "%d%" EQU "A" cd A:\
if /I "%d%" EQU "A" cd A:\
if /I "%d%" EQU "A" cd A:\
if /I "%d%" EQU "A" cd A:\
if /I "%d%" EQU "A" cd A:\
if /I "%d%" EQU "A" cd A:\
if /I "%d%" EQU "A" cd A:\
if /I "%d%" EQU "A" cd A:\
if /I "%d%" EQU "A" cd A:\
if /I "%d%" EQU "A" cd A:\
if /I "%d%" EQU "A" cd A:\
if /I "%d%" EQU "A" cd A:\
if /I "%d%" EQU "A" cd A:\
SHORTCUT -f -t C:\grub2\grub2win.exe -n C:\ProgramData\Microsoft\Windows\Start Menu\Programs
SHORTCUT -f -t C:\grub2\grub2win.exe -n C:\Users\%userprofile%\Desktop
echo Grub2Win has installed.
set /P d=Do you want to start Grub2Win[Y/N]?
if /I "%c%" EQU "Y" goto :startg2w
if /I "%c%" EQU "N" goto :exit

:installonc
echo Beginning installation...
xcopy.exe grub2 C:\ /E
SHORTCUT -f -t C:\grub2\grub2win.exe -n C:\ProgramData\Microsoft\Windows\Start Menu\Programs
SHORTCUT -f -t C:\grub2\grub2win.exe -n C:\Users\%userprofile%\Desktop
echo Grub2Win has installed.
set /P d=Do you want to start Grub2Win[Y/N]?
if /I "%c%" EQU "Y" goto :startg2w
if /I "%c%" EQU "N" goto :exit

:startg2w
cd C:\grub2\
start grub2win.exe

:exit
echo "Thanks for using the Installer!"
pause
exit

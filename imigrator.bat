@echo off

:: �T�v
:: 	- msys�Ńr���h����Vim�𑼃��[�U���Ɉڍs����
:: HISTORY
:: 	- 2019/11/24 : �V�K�쐬
:: �Q�l
:: 	- "C:\msys64\usr\local\src\hysvim\Vim ����.html"
:: NOTE
:: 	- �p�X�͌Œ�œ���Ă���̂ŁA�\����ς��鎞�͏C���K�v
::


:INIT_RTN
::openfiles > NUL 2>&1 
::if NOT %ERRORLEVEL% EQU 0 goto MAIN_RTN
::echo �Ǘ��Ҍ����Ŏ��s�̂��߁A�I��
::goto EXIT_RTN

:MAIN_RTN
cd /d %~dp0

set distination="C:\Program Files (x86)\Vim\vim81"
set vim_path=C:\msys64\usr\local\project\vim-setting\vim
set vim_source=%vim_path%\src
set vim_runtime=%vim_path%\runtime

mkdir		%distination% > NUL 2>&1
cd   		%distination%
copy /y 	%vim_source%\tee\tee.exe
copy /y 	%vim_source%\xxd\xxd.exe
xcopy 		%vim_runtime% %distination% /E /H /I /Y
copy /y 	%vim_source%\*.exe

:: !!! �p�X�̎w�肪�K�v�Ȃ̂ŁA���s�O�ɓ��͂��邱�� !!!
cd /d %~dp0
call japanese_setting.bat

cd /d %~dp0

:EXIT_RTN
exit /b 0

@echo off

:: �T�v
:: 	- msys�ŃC���X�g�[������dein.vim�𑼃��[�U���Ɉڍs����
:: HISTORY
:: 	- 2019/11/28 : �V�K�쐬
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

set user_dir=C:\Users\yuusaku.hayashi
set distination=%user_dir%\.cache
set dein_cache=C:\msys64\usr\local\src\vimfiles\.cache

mkdir		%distination% > NUL 2>&1
xcopy 	        %dein_cache% %distination% /E /H /I /Y

set distination=%user_dir%\.vim\rc
set dein_cache=C:\msys64\usr\local\src\vimfiles\.cache

:EXIT_RTN
exit /b 0

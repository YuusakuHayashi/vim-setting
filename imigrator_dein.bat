@echo off

:: 概要
:: 	- msysでインストールしたdein.vimを他ユーザ環境に移行する
:: HISTORY
:: 	- 2019/11/28 : 新規作成
:: 参考
:: 	- "C:\msys64\usr\local\src\hysvim\Vim メモ.html"
:: NOTE
:: 	- パスは固定で入れているので、構成を変える時は修正必要
::


:INIT_RTN
::openfiles > NUL 2>&1 
::if NOT %ERRORLEVEL% EQU 0 goto MAIN_RTN
::echo 管理者権限で実行のため、終了
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

@echo off

:: 概要
:: 	- msysでビルドしたVimを他ユーザ環境に移行する
:: HISTORY
:: 	- 2019/11/24 : 新規作成
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

:: !!! パスの指定が必要なので、実行前に入力すること !!!
cd /d %~dp0
call japanese_setting.bat

cd /d %~dp0

:EXIT_RTN
exit /b 0

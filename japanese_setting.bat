@echo off

:: 概要
:: 	- 日本語設定を他ユーザ環境へ移行する？ 
:: HISTORY
:: 	- 2019/11/24 : 新規作成
:: 参考
:: 	- "C:\msys64\usr\local\src\hysvim\Vim_GVimのビルドと実行環境の作成 - fudist.html" 
:: NOTE
:: 	- 正直ほぼコピペしただけで、何をしているのか良く分からない 
:: 	- jp.po -> jp.moにpythonを使って変換する。それをユーザ環境へコピーする
::

::openfiles > NUL 2>&1 
::if NOT %ERRORLEVEL% EQU 0 goto MAIN_RTN
::echo 管理者権限で実行のため、終了
::goto END_RTN

:MAIN_RTN
cd /d %~dp0
set distination="C:\Program Files (x86)\Vim\vim81"
set dist_lang=%distination%\lang\ja\LC_MESSAGES
set vim_path=C:\msys64\home\yuusaku.hayashi\local\vim
set vim_source=%vim_path%\src
::set vim_runtime=%vim_path%\runtime
cd %vim_source%\po
:: pythonがインストールされているパスを指定する
set python_path=%USERPROFILE%\AppData\Local\Programs\Python\Python36-32

%python_path%\python.exe %python_path%\tools\i18n\msgfmt.py ja.po

move ja.mo vim.mo
mkdir -p %dist_lang% > NUL 2>&1
copy /y vim.mo %dist_lang%\vim.mo 

cd /d %~dp0

:END_RTN
exit /b 0

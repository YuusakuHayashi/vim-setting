@echo off

:: �T�v
:: 	- ���{��ݒ�𑼃��[�U���ֈڍs����H 
:: HISTORY
:: 	- 2019/11/24 : �V�K�쐬
:: �Q�l
:: 	- "C:\msys64\usr\local\src\hysvim\Vim_GVim�̃r���h�Ǝ��s���̍쐬 - fudist.html" 
:: NOTE
:: 	- �����قڃR�s�y���������ŁA�������Ă���̂��ǂ�������Ȃ� 
:: 	- jp.po -> jp.mo��python���g���ĕϊ�����B��������[�U���փR�s�[����
::

::openfiles > NUL 2>&1 
::if NOT %ERRORLEVEL% EQU 0 goto MAIN_RTN
::echo �Ǘ��Ҍ����Ŏ��s�̂��߁A�I��
::goto END_RTN

:MAIN_RTN
cd /d %~dp0
set distination="C:\Program Files (x86)\Vim\vim81"
set dist_lang=%distination%\lang\ja\LC_MESSAGES
set vim_path=C:\msys64\home\yuusaku.hayashi\local\vim
set vim_source=%vim_path%\src
::set vim_runtime=%vim_path%\runtime
cd %vim_source%\po
:: python���C���X�g�[������Ă���p�X���w�肷��
set python_path=%USERPROFILE%\AppData\Local\Programs\Python\Python36-32

%python_path%\python.exe %python_path%\tools\i18n\msgfmt.py ja.po

move ja.mo vim.mo
mkdir -p %dist_lang% > NUL 2>&1
copy /y vim.mo %dist_lang%\vim.mo 

cd /d %~dp0

:END_RTN
exit /b 0

# ------------------------------------------------------------------------
# DOS窓Vimコンパイル
# pythonインタフェース利用
#    - msys2環境のpython(2019/12/08)
# mingw32-make -f Make_ming.mak GUI=no IME=yes MBYTE=yes ICONV=yes \
#   PYTHON3=c:/msys64/mingw64 DYNAMIC_PYTHON3=yes PYTHON3_VER=38 \
#     PYTHON3_HOME=c:/msys64/mingw64/ \
#     PYTHON3INC=-Ic:/msys64/mingw64/include/python3.8 \
#     DYNAMIC_PYTHON3_DLL=libpython3.8.dll \
# ------------------------------------------------------------------------

# ------------------------------------------------------------------------
# mintty Vimコンパイル
# pythonインタフェース利用
make clean && \
./configure \
	--prefix=${HOME}/local \
	--enable-pythoninterp \
	--enable-fail-if-missing=yes \
	--with-features=huge \
# ------------------------------------------------------------------------

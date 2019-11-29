# HISTORY
# 	- 2019/11/24 : 新規作成

# vim/srcをカレントディレクトリにして実行する
# 例 : C:\msys64\usr\local\src\vim\src

# ----------------------------------------------------------------------------------- #
# PYTHON3のパス(***の箇所)に、Pythonがインストールされているパスを選択する。          #
# msys2にもデフォルトでインストールされているから、そちらを使う方がいいかもしれない   #
# 自分がビルドした時には、GUI版の方がリンクエラーでうまく行かなかった                 #
# ----------------------------------------------------------------------------------- #

# ディレクトリを指定する。exeの指定は必要なし
mingw32-make -f Make_ming.mak GUI=no IME=yes MBYTE=yes ICONV=yes \
	PYTHON3=c:/Users/***************/AppData/Local/Programs/Python/Python36-32 DYNAMIC_PYTHON3=yes PYTHON3_VER=36 \
		DEBUG=no

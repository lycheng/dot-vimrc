.PHONY: ycm leaderf

_PLUGGED_PATH=$(HOME)/.local/share/nvim/plugged
_PIP_PATH=/usr/bin/pip3

ycm:
	cd $(_PLUGGED_PATH)/YouCompleteMe && ./install.py --clang-completer --go-completer

leaderf:
	cd $(_PLUGGED_PATH)/LeaderF && ./install.sh

update-plugins:
	vim +PlugUpdate +qall
	vim +GoUpdateBinaries +qall
	vim +UpdateRemotePlugins +qall

update: update-plugins ycm leaderf
	$(_PIP_PATH) install -r extra/requirements --upgrade --user -i https://pypi.tuna.tsinghua.edu.cn/simple

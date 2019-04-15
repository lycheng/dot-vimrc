.PHONY: ycm leaderf

_PLUGGED_PATH=$(HOME)/.local/share/nvim/plugged
_PIP_PATH=/usr/local/bin/pip

ycm:
	cd $(_PLUGGED_PATH)/YouCompleteMe && ./install.py --clang-completer --gocode-completer

leaderf:
	cd $(_PLUGGED_PATH)/LeaderF && ./install.sh

update-plugins:
	vim +PlugUpdate +qall

update: update-plugins ycm leaderf
	$(_PIP_PATH) install --upgrade pynvim
	$(_PIP_PATH) install --upgrade neovim
	$(_PIP_PATH) install --upgrade flake8


.PHONY: ycm leaderf

_PLUGGED_PATH=$(HOME)/.local/share/nvim/plugged
_PIP_PATH=/usr/local/bin/pip

ycm:
	cd $(_PLUGGED_PATH)/YouCompleteMe && ./install.py --clang-completer --go-completer

leaderf:
	cd $(_PLUGGED_PATH)/LeaderF && ./install.sh

update-plugins:
	vim +PlugUpdate +qall
	vim +GoUpdateBinaries +qall

update: update-plugins ycm leaderf
	$(_PIP_PATH) install --upgrade pynvim --user
	$(_PIP_PATH) install --upgrade neovim --user
	$(_PIP_PATH) install --upgrade flake8 --user

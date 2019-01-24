.PHONY: ycm leaderf

_PLUGGED_PATH=$(HOME)/.local/share/nvim/plugged

ycm:
	cd $(_PLUGGED_PATH)/YouCompleteMe && ./install.py --clang-completer --gocode-completer

leaderf:
	cd $(_PLUGGED_PATH)/LeaderF && ./install.sh

update: ycm leaderf
	pip install --user --upgrade pynvim
	pip install --user --upgrade neovim


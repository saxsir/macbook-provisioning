all:
	./bootstrap.sh

update:
	brew update && brew upgrade && brew cleanup
	&& upgrade_oh_my_zsh
	&& vim -c PlugUpdate -c PlugClean -c exit -c exit

all: bootstrap dotfiles

bootstrap:
	./bootstrap.sh

dotfiles: $(HOME)/src/github.com/saxsir/dotfiles

$(HOME)/src/github.com/saxsir/dotfiles:
	mkdir -p $(@D)
	git clone git@github.com:saxsir/dotfiles.git $@

update:
	brew update && brew upgrade && brew cleanup

update-lockfile:
	brew bundle --dump

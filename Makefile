all: mackup

bootstrap:
	./bootstrap.sh

dotfiles: $(HOME)/src/github.com/saxsir/dotfiles
	# dotfilesの配置
	make -C $@

mackup: dotfiles bootstrap
	mackup restore

$(HOME)/src/github.com/saxsir/dotfiles:
	mkdir -p $(@D)
	git clone git@github.com:saxsir/dotfiles.git $@

update:
	brew update && brew upgrade && brew cleanup

update-lockfile:
	brew bundle --dump

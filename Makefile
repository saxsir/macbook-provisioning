all: dotfiles bootstrap

dotfiles: $(HOME)/src/github.com/saxsir/dotfiles
	$(MAKE) -C $<

bootstrap:
	./bootstrap.sh
	touch $@

$(HOME)/src/github.com/saxsir/dotfiles:
	mkdir -p $(@D)
	git clone git@github.com:saxsir/dotfiles.git $@


update:
	brew update && brew upgrade && brew cleanup \
	&& vim -c PlugUpdate -c PlugClean -c exit -c exit

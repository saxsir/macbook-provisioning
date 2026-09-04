all: bootstrap dotfiles

bootstrap:
	./bootstrap.sh

dotfiles: $(HOME)/src/github.com/saxsir/dotfiles
	# dotfilesの配置。新規マシンでは /opt/homebrew/bin が PATH に無いので brew shellenv を通してから呼ぶ
	command -v brew >/dev/null 2>&1 || eval "$$(/opt/homebrew/bin/brew shellenv)"; $(MAKE) -C $<

$(HOME)/src/github.com/saxsir/dotfiles:
	mkdir -p $(@D)
	git clone git@github.com:saxsir/dotfiles.git $@

update:
	brew update && brew upgrade && brew cleanup

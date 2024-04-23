.PHONY: all install sha256

all: install

install:
	brew install --cask Casks/kensington-trackball-works.rb

sha256: tmp/kensingtonworks_3.1.10_1706808646.pkg
	shasum -a 256 kensingtonworks_3.1.10_1706808646.pkg | awk '{print $$1}'

tmp/kensingtonworks_3.1.10_1706808646.pkg: tmp
	curl -so $@ https://www.kensington.com/siteassets/software-support/kensingtonworks/2024-update/kensingtonworks_3.1.10_1706808646.pkg

tmp:
	mkdir -p $@

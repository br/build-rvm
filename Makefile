.PHONY:

all: binary

rvm:
	@libexec/build-rvm 1.20.13

ree-1.8.7-2012.02.tar.bz2:
	@libexec/build-rvm-ruby ree "1.3.5"

ruby-1.9.3-p374.tar.bz2:
	@libexec/build-rvm-ruby 1.9.3-p374 "1.3.5"

ruby-1.9.3-p429.tar.bz2:
	@libexec/build-rvm-ruby 1.9.3-p429 "1.3.5"

ruby-2.0.0-p195.tar.bz2:
	@libexec/build-rvm-ruby 2.0.0-p195 "1.3.5"

ree_install: ree-1.8.7-2012.02.tar.bz2
	@libexec/install-rvm-ruby ree "1.3.5"

ruby_193_374_install: ruby-1.9.3-p374.tar.bz2
	@libexec/install-rvm-ruby 1.9.3-p374 "1.3.5"

ruby_193_429_install: ruby-1.9.3-p429.tar.bz2
	@libexec/install-rvm-ruby 1.9.3-p429 "1.3.5"

ruby_200_195_install: ruby-2.0.0-p195.tar.bz2
	@libexec/install-rvm-ruby 2.0.0-p195 "1.3.5"

binary: ree-1.8.7-2012.02.tar.bz2 ruby-1.9.3-p374.tar.bz2 ruby-1.9.3-p429.tar.bz2 ruby-2.0.0-p195.tar.bz2

install:
	@$(MAKE) ree_install ruby_193_374_install ruby_193_429_install ruby_200_195_install


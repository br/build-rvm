all: binary

rvm:
	@libexec/build-rvm 1.20.13

ree_binary: ree-1.8.7-2012.02.tar.bz2
	@libexec/build-rvm-ruby ree "1.3.5"

ruby_193_374_binary: ruby-1.9.3-p374.tar.bz2
	@libexec/build-rvm-ruby 1.9.3-p374 "1.3.5"

ruby_193_429_binary: ruby-1.9.3-p429.tar.bz2
	@libexec/build-rvm-ruby 1.9.3-p429 "1.3.5"

ruby_200_195_binary: ruby-2.0.0-p195.tar.bz2
	@libexec/build-rvm-ruby 2.0.0-p195 "1.3.5"

ree_install: ree_binary
	@libexec/install-rvm-ruby ree "1.3.5"

ruby_193_374_install: ruby_193_374_binary
	@libexec/install-rvm-ruby 1.9.3-p374 "1.3.5"

ruby_193_429_install: ruby_193_429_binary
	@libexec/install-rvm-ruby 1.9.3-p429 "1.3.5"

ruby_200_195_install: ruby_200_195_binary
	@libexec/install-rvm-ruby 2.0.0-p195 "1.3.5"

binary: ree_binary ruby_193_374_binary ruby_193_429_binary ruby_200_195_binary

install: binary
	@$(MAKE) ree_install ruby_193_374_install ruby_193_429_install ruby_200_195_install


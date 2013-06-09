all: binary

rvm:
	@sudo -E libexec/build-rvm 1.18.21 1.8.25

binary: rvm
	@sudo -E libexec/build-rvm-ruby ree
	@sudo -E libexec/build-rvm-ruby 1.9.3

install: rvm
	@sudo -E libexec/install-rvm-ruby ree "1.3.5"
	@sudo -E libexec/install-rvm-ruby 1.9.3 "1.3.5"

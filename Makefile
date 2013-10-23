all: binary

rvm:
	@sudo -E libexec/build-rvm 1.20.13

binary: rvm
	@sudo -E libexec/build-rvm-ruby ree
	@sudo -E libexec/build-rvm-ruby 1.9.3-p374
	@sudo -E libexec/build-rvm-ruby 1.9.3-p429
	@sudo -E libexec/build-rvm-ruby 2.0.0-p195

install: rvm
	@sudo -E libexec/install-rvm-ruby ree "1.3.5"
	@sudo -E libexec/install-rvm-ruby 1.9.3-p374 "1.3.5"
	@sudo -E libexec/install-rvm-ruby 2.0.0-p195 "1.3.5"

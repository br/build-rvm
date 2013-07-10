all: binary

rvm:
	@libexec/build-rvm 1.20.13

ruby_binaries:
	@libexec/build-rvm-ruby ree
	@libexec/build-rvm-ruby 1.9.3-p374
	@libexec/build-rvm-ruby 1.9.3-p429
	@libexec/build-rvm-ruby 2.0.0-p195

binary: rvm ruby_binaries

ruby_installs:
	@libexec/install-rvm-ruby ree "1.3.5"
	@libexec/install-rvm-ruby 1.9.3-p374 "1.3.5"
	@libexec/install-rvm-ruby 1.9.3-p429 "1.3.5"
	@libexec/install-rvm-ruby 2.0.0-p195 "1.3.5"

install: rvm ruby_installs

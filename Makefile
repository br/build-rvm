all: binary

binary:
	@sudo -E libexec/build-rvm
	@sudo -E libexec/build-rvm-ruby ree "~> 1.3.5"
	@sudo -E libexec/install-rvm-ruby ree "~> 1.3.5"
	@sudo -E libexec/build-rvm-ruby 1.9.3 "~> 1.3.5"
	@sudo -E libexec/install-rvm-ruby 1.9.3 "~> 1.3.5"

install:
	@sudo -E libexec/build-rvm
	@sudo -E libexec/install-rvm-ruby ree "~> 1.3.5"
	@sudo -E libexec/install-rvm-ruby 1.9.3 "~> 1.3.5"

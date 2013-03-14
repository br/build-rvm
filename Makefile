all: global

global:
	@sudo libexec/build-rvm
	@sudo libexec/build-rvm-ruby ree "~> 1.2.5"
	@sudo libexec/build-rvm-ruby 1.9.3 "~> 1.2.5"

install:
	@sudo libexec/build-rvm
	@sudo libexec/install-rvm-ruby ree "~> 1.2.5"
	@sudo libexec/install-rvm-ruby 1.9.3 "~> 1.2.5"

local:
	@libexec/build-rvm
	@libexec/build-rvm-ruby ree "~> 1.2.5"
	@libexec/build-rvm-ruby 1.9.3 "~> 1.2.5"

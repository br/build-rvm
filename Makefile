RVM := 1.23.16
BUNDLER := 1.3.5

all: binary

rvm:
	@sudo -E libexec/build-rvm $(RVM)

binary: rvm
	@sudo -E libexec/build-rvm-ruby ree
	@sudo -E libexec/build-rvm-ruby 1.9.3
	@sudo -E libexec/build-rvm-ruby 2.0.0

install: rvm
	@sudo -E libexec/install-rvm-ruby ree   $(BUNDLER)
	@sudo -E libexec/install-rvm-ruby 1.9.3 $(BUNDLER)
	@sudo -E libexec/install-rvm-ruby 2.0.0 $(BUNDLER)

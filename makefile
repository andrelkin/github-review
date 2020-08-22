.PHONY: ci local test
ci:
	cask upgrade-cask
	cask install
	cask exec buttercup -L test/github-review-test.el

test:
	cask exec buttercup -L test/github-review-test.el

local:
	docker run -v $$(pwd):/opt silex/emacs:master-dev  bash -c 'cd /opt && make ci'

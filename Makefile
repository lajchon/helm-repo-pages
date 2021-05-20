# Makefile
# Provides targets for testing this module.
SHELL := /bin/bash

.PHONY: package
package:
	rm -f index.yaml
	helm package /home/lajchon/git/gitlab.com/helm/helm-percipio-base
	helm repo index . --url https://lajchon.github.io/helm-repo-pages/
	git add -A
	git commit --no-verify -m "Package update from helm-percipio-base"
	git push

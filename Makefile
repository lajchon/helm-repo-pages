# Makefile
# Provides targets for testing this module.
SHELL := /bin/bash

.PHONY: package
package:
	rm -f index.yaml
	helm package /home/lajchon/git/gitlab.com/helm-percipio-base

.PHONY: index
index:
	helm repo index . --url https://lajchon.github.io/helm-repo-pages/

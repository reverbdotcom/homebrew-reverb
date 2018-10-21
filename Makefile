.PHONY: release

check-version:
ifndef VERSION
	$(error VERSION is undefined)
endif

protopkg-release: check-version
	@echo "Building version $(VERSION)"
	@echo "Checking SHA"
	@curl -sL https://github.com/ebenoist/protopkg/releases/download/$(VERSION)/binaries.tar.gz | shasum -a 256 | awk '{ print $$1 }' > PROTOPKG_SHA
	@echo $(VERSION) > PROTOPKG_VERSION
	@git add .
	@git commit -m "Bumping to $(VERSION)"
	@git push origin head

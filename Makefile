.PHONY: protopkg-release rv-release check-version

check-version:
ifndef VERSION
	$(error VERSION is undefined)
endif

commit:
ifdef DRYRUN
	@echo "would commit and push, but DRYRUN is set"
else
	@git add .
	@git commit -m "Bumping to $(VERSION)"
	@git push origin HEAD
endif

protopkg-release: check-version protopkg-sha protopkg-version check-version commit
rv-release: check-version rv-sha rv-version commit
sbx-release: check-version sbx-sha sbx-version commit

protopkg-version:
	@echo $(VERSION) > PROTOPKG_VERSION

protopkg-sha:
	@curl -sL https://github.com/reverbdotcom/protopkg/releases/download/$(VERSION)/binaries.tar.gz | shasum -a 256 | awk '{ print $$1 }' > PROTOPKG_SHA

rv-sha:
	@curl -sL https://github.com/reverbdotcom/rv/releases/download/$(VERSION)/binaries.tar.gz | shasum -a 256 | awk '{ print $$1 }' > RV_SHA

rv-version:
	@echo $(VERSION) > RV_VERSION

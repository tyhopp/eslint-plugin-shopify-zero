targets = clean build publish

.PHONY: help $(targets)

help:
	@echo "Available targets: $(targets)"

clean:
	rm out.js

build:
	npm run ncc
	cp dist/index.js out.js
	rm -rf dist

publish:
	cp package.json original-package.json
	npm pkg delete dependencies devDependencies peerDependencies
	npm publish
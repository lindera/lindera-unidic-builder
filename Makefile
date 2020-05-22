BIN_DIR ?= ./bin
UNIDIC_VERSION ?= 2.1.2
LINDERA_UNIDIC_BUILDER_VERSION ?= $(shell cargo metadata --no-deps --format-version=1 | jq -r '.packages[] | select(.name=="lindera-unidic-builder") | .version')

.DEFAULT_GOAL := build

clean:
	rm -rf $(BIN_DIR)
	rm -rf ./lindera-unidic-*
	rm -rf ./unidic-mecab-*
	cargo clean

format:
	cargo fmt

test:
	cargo test

build:
	cargo build --release
	mkdir -p $(BIN_DIR)
	cp -p ./target/release/lindera-unidic $(BIN_DIR)

tag:
	git tag v$(LINDERA_UNIDIC_BUILDER_VERSION)
	git push origin v$(LINDERA_UNIDIC_BUILDER_VERSION)

publish:
ifeq ($(shell cargo show --json lindera-unidic-builder | jq -r '.versions[].num' | grep $(LINDERA_UNIDIC_BUILDER_VERSION)),)
	cargo package && cargo publish
endif

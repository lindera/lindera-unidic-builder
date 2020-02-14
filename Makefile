BIN_DIR ?= ./bin
UNIDIC_VERSION ?= 2.1.2
SOURCE_URL ?= https://unidic.ninjal.ac.jp/unidic_archive/cwj/$(UNIDIC_VERSION)/unidic-mecab-$(UNIDIC_VERSION)_src.zip
VERSION ?=

ifeq ($(VERSION),)
  VERSION = $(shell cargo metadata --no-deps --format-version=1 | jq -r '.packages[] | select(.name=="lindera-unidic-builder") | .version')
endif

clean:
	rm -rf $(BIN_DIR)
	rm -rf ./lindera-unidic-*
	rm -rf ./unidic-mecab-*
	cargo clean

format:
	cargo fmt

build:
	cargo build --release
	mkdir -p $(BIN_DIR)
	cp -p ./target/release/lindera-unidic $(BIN_DIR)

unidic-mecab-download:
ifeq ($(wildcard ./unidic-mecab-$(UNIDIC_VERSION)_src.zip),)
	curl -L -O "$(SOURCE_URL)"
endif

unidic-mecab-extract: unidic-mecab-download
ifeq ($(wildcard ./unidic-mecab-$(UNIDIC_VERSION)_src/*),)
	unzip ./unidic-mecab-$(UNIDIC_VERSION)_src.zip
endif

lindera-unidic: build unidic-mecab-extract
	$(BIN_DIR)/lindera-unidic ./unidic-mecab-$(UNIDIC_VERSION)_src ./lindera-unidic-$(UNIDIC_VERSION)
	tar -cvjf ./lindera-unidic-$(UNIDIC_VERSION).tar.bz2 ./lindera-unidic-$(UNIDIC_VERSION)

test:
	cargo test
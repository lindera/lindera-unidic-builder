BIN_DIR ?= ./bin
SOURCE_URL ?= https://ja.osdn.net/frs/redir.php?m=ymu&f=unidic/58338/unidic-mecab-2.1.2_src.zip
MECAB_UNIDIC_DIR ?= ./mecab-unidic
LINDERA_UNIDIC_DIR ?= ./lindera-unidic
VERSION ?=

ifeq ($(VERSION),)
  VERSION = $(shell cargo metadata --no-deps --format-version=1 | jq -r '.packages[] | select(.name=="lindera-unidic-builder") | .version')
endif

clean:
	rm -rf $(BIN_DIR)
	rm -rf $(LINDERA_UNIDIC_DIR)
	rm -rf lindera-unidic-*.tar.bz2
	rm -rf $(MECAB_UNIDIC_DIR)
	rm ./unidic-mecab_src.zip
	cargo clean

format:
	cargo fmt

mecab-unidic:
ifeq ($(wildcard ./unidic-mecab_src.zip),)
	curl -L "$(SOURCE_URL)" > ./unidic-mecab.zip
endif
ifeq ($(wildcard ./$(MECAB_UNIDIC_DIR)/*),)
	unzip ./unidic-mecab.zip
	mv ./unidic-mecab-2.1.2_src $(MECAB_UNIDIC_DIR)
endif

build: mecab-unidic
	cargo build --release
	mkdir -p $(BIN_DIR)
	cp -p ./target/release/lindera-unidic $(BIN_DIR)

lindera-unidic: build
	$(BIN_DIR)/lindera-unidic $(MECAB_UNIDIC_DIR) $(LINDERA_UNIDIC_DIR)
	tar -cvjf ./lindera-unidic-$(VERSION).tar.bz2 $(LINDERA_UNIDIC_DIR)

test:
	cargo test
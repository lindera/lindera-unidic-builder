LINDERA_UNIDIC_BUILDER_VERSION ?= $(shell cargo metadata --no-deps --format-version=1 | jq -r '.packages[] | select(.name=="lindera-unidic-builder") | .version')

.DEFAULT_GOAL := build

clean:
	cargo clean

format:
	cargo fmt

test:
	cargo test

build:
	cargo build --release

tag:
	git tag v$(LINDERA_UNIDIC_BUILDER_VERSION)
	git push origin v$(LINDERA_UNIDIC_BUILDER_VERSION)

publish:
ifeq ($(shell curl -s -XGET https://crates.io/api/v1/crates/lindera-unidic-builder | jq -r '.versions[].num' | grep $(LINDERA_UNIDIC_BUILDER_VERSION)),)
	cargo package && cargo publish
endif

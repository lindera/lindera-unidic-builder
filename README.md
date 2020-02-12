# Lindera UniDic Builder

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) [![Join the chat at https://gitter.im/bayard-search/lindera](https://badges.gitter.im/bayard-search/lindera.svg)](https://gitter.im/bayard-search/lindera?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

UniDic builder for [Lindera](https://github.com/bayard-search/lindera). This project fork from fulmicoton's [kuromoji-rs](https://github.com/fulmicoton/kuromoji-rs).

## Install

```
% cargo install lindera-unidic-builder
```

## Build

The following products are required to build:

- Rust >= 1.39.0
- make >= 3.81

```text
% make lindera-unidic
```

## Dictionary version

This project supports UniDic 2.1.2.
See [detail of UniDic](https://unidic.ninjal.ac.jp/) .

## Usage

This section describes how to use the command line interface.

Show help with the following command::
```
% ./bin/lindera-unidic -h
```

Building a dictionary with `lindera-unidic` command:
```
% ./bin/lindera-unidic ./mecab-unidic ./lindera-unidic
```

## API reference

The API reference is available. Please see following URL:
- <a href="https://docs.rs/lindera-unidic-builder" target="_blank">Lindera UniDic Builder</a>

## Project links

lindera consists of several projects. The list is following:

- [Lindera](https://github.com/bayard-search/lindera)
- [Lindera Core](https://github.com/bayard-search/lindera-core)
- [Lindera Dictionary](https://github.com/bayard-search/lindera-dictionary)
- [Lindera IPADIC](https://github.com/bayard-search/lindera-ipadic)
- [lindera IPADIC Builder](https://github.com/bayard-search/lindera-ipadic-builder)
- [lindera UniDic Builder](https://github.com/bayard-search/lindera-unidic-builder)
- [Lindera CLI](https://github.com/bayard-search/lindera-cli)

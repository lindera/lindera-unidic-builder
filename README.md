# Lindera UniDic

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) [![Join the chat at https://gitter.im/bayard-search/lindera](https://badges.gitter.im/bayard-search/lindera.svg)](https://gitter.im/bayard-search/lindera?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

UniDic for [Lindera](https://github.com/bayard-search/lindera). This project fork from fulmicoton's [kuromoji-rs](https://github.com/fulmicoton/kuromoji-rs).

## Building Lindera-UniDic

### Requirements

The following products are required to build Lindera-UniDic CLI:

- Rust >= 1.39.0
- make >= 3.81

### Building a command-line interface and a dictionary

Building a dictionary with the following command:

```text
$ make lindera-unidic
```

## Dictionary version

This project support unidic-mecab-2.1.2_src.
See [detail of UniDic](https://unidic.ninjal.ac.jp/) .

## Installing Lindera-UniDic

```
$ cargo install lindera-unidic
```

## Usage

This section describes how to use the command line interface.

Show help with the following command::
```
$ ./bin/lindera-unidic -h
```

Building a dictionary with `lindera-unidic` command:
```
$ ./bin/lindera-unidic ./mecab-unidic ./lindera-unidic
```

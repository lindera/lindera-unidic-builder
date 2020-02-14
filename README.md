# Lindera UniDic Builder

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) [![Join the chat at https://gitter.im/lindera-morphology/lindera](https://badges.gitter.im/lindera-morphology/lindera.svg)](https://gitter.im/lindera-morphology/lindera?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

UniDic builder for [Lindera](https://github.com/lindera-morphology/lindera). This project fork from fulmicoton's [kuromoji-rs](https://github.com/fulmicoton/kuromoji-rs).

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

## Building a dictionary

Building a dictionary with `lindera-unidic` command:

```
% ./bin/lindera-unidic ./unidic-mecab-2.1.2_src ./lindera-unidic-2.1.2
```

## Tokenizing text using produced dictionary

You can tokenize text using produced dictionary with `lindera` command:

```
% echo "羽田空港限定トートバッグ" | lindera -d ./lindera-unidic-2.1.2
羽田    名詞,固有名詞,人名,姓,*,*,羽田,ハタ,ハタ
空港    名詞,普通名詞,一般,*,*,*,空港,クーコー,クーコー
限定    名詞,普通名詞,サ変可能,*,*,*,限定,ゲンテー,ゲンテー
トート  名詞,普通名詞,一般,*,*,*,トート,トート,トート
バッグ  名詞,普通名詞,一般,*,*,*,バッグ,バッグ,バッグ
EOS
```

For more details about `lindera` command, please refer to the following URL:

- [Lindera CLI](https://github.com/lindera-morphology/lindera-cli)

## API reference

The API reference is available. Please see following URL:
- <a href="https://docs.rs/lindera-unidic-builder" target="_blank">Lindera UniDic Builder</a>

## Project links

lindera consists of several projects. The list is following:

- [Lindera](https://github.com/lindera-morphology/lindera)
- [Lindera Core](https://github.com/lindera-morphology/lindera-core)
- [Lindera Dictionary](https://github.com/lindera-morphology/lindera-dictionary)
- [Lindera IPADIC](https://github.com/lindera-morphology/lindera-ipadic)
- [lindera IPADIC Builder](https://github.com/lindera-morphology/lindera-ipadic-builder)
- [lindera IPADIC NEologd Builder](https://github.com/lindera-morphology/lindera-ipadic-neologd-builder)
- [lindera UniDic Builder](https://github.com/lindera-morphology/lindera-unidic-builder)
- [Lindera CLI](https://github.com/lindera-morphology/lindera-cli)

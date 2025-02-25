# モジュロ演算
[![test](https://github.com/03310317/robosys2024_1/actions/workflows/test.yml/badge.svg)](https://github.com/03310317/robosys2024_1/actions/workflows/test.yml)

## プロジェクトタイトル

「モジュロ演算による誕生日の曜日当て」

## 概要

このプログラムは、ある映画作品の1シーンに興味を持ち、私もやってみたいと思い作成しました。ユーザーから誕生年、月、日、うるう年であればyes、そうでなければnoを入力してもらい、誕生日の曜日を当てるというものになっています。実行すると以下の流れで動作します。
- ユーザーから誕生年、月、日、うるう年であればyesそうでなければnoを入力してもらう。

- 入力された年月日とうるう年の情報をもとに計算を行う。

- 計算結果として得られた曜日を出力。

## 使用方法

以下の手順でリポジトリをクローンし、プログラムを実行します。

- リポジトリのクローン
```
$ git clone https://github.com/03310317/robosys2024_1.git
```

- ディレクトリへ移動
```
$ cd robosys2024_1
```

- 実行権限を与える
```
$ chmod +x mojuro_calculation
```

- 実行
```
$ echo 2005/3/31/no | ./mojuro_calculation
```

## 実行方法の例

```
$echo 2005/3/31/no | ./mojuro_calculation
2005/3/31は木曜日です。
```

```
$echo 2004/3/17/yes | ./mojuro_calculation
2004/3/17は水曜日です。
```

##  必要なソフトウェア
- Python
 - テスト済みバージョン: 3.7~3.10

## テスト環境
- 対応OS: Ubuntu 22.04

## ライセンス
- このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用   を許可されています。
- © 2024 Kosuke Abe

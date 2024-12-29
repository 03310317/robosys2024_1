#!/bin/bash -xv
#! SPDX-FileCopyrightText: 2024 Kosuke Abe
#! SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0

# 正常入力テスト
out=$(echo -e "2000/1/1/yes" | ./mojuro_calculation)
[ "$?" -eq 0 ] || ng "$LINENO"

# 必要な出力を確認
echo "${out}" | grep -Eq "2000/1/1は土曜日です。" || ng "$LINENO"

# 異常入力テスト：文字入力
out=$(echo -e "a\nb\nc\n" | ./mojuro_calculation 2>&1)
[ "$?" -ne 0 ] || ng "$LINENO"



# プログラム中にエラーが発生していないことを確認
echo "${out}" | grep -Eq "Traceback|SyntaxError|EOFError" && ng "$LINENO"

# 結果の表示
[ "${res}" -eq 0 ] && echo OK
exit $res


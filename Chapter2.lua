---------------------------------------------------
--[[　C言語との違い 　　　　　　　　　　　　　　   --]]
--[[　1．変数の型を意識しなくてもよい　　　　　　　--]]
--[[　2．変数はいかなるところでも定義できる　　　　--]]
--[[　3．変数は指定が無い限りグローバル変数となる　--]]
---------------------------------------------------
--例えvariableという変数を作るとしてそこにはどんな値を入れてもかまわない（変数の型を意識しなくてもよい）
--この表現は正確ではないが，今の段階ではそう思ってもかまわない

variable = 10               --整数
variable = 10.5             --小数
variable = "Hello, World!"  --文字列
variable = 'Lua'            --文字

--上記のように整数、小数、文字列、文字を全部型宣言なしで宣言できる。これがC言語との違い！

--下記の例は全部同じ意味である。

--例１
variable1 = 10 variable2 = 20
--例２
variable1 = 10
variable2 = 20
--例３
variable1, variable2 = 10, 20

--例１，２，３は全部同じ出力結果を出す。

--変数名のルール

--Luaの変数名のルールは他の言語と違いがない

------------------------------------------------
--[[ 次の場合は変数名として使わない（無効）    --]]
--[[ 1．先頭に数字が含まれている              --]]
--[[ 2．予約語                              --]]
--[[ 3．特殊文字や空白                       --]]
--[[ 4．記号や演算子                         --]]
------------------------------------------------

--他の言語と同じくアンダースコア'_'は使用可能

--Luaの予約語一覧
--1．and : 論理演算子で、両方の条件が真である場合に真を返す。C言語の&&に対応する。
--2．break : ループ（forまたはwhile）を即座に終了する。C言語も同じである。
--3．do : コードブロックの開始を示す。複数行のコードを一つのブロックとして扱う。C言語の { } の { に対応する。
--4．else : elseはif条件が偽である場合に実行されるコードブロックを示す。C言語も同じである。
--5．elseif : ifの条件が偽で、追加の条件をチェックする場合に使用する。C言語ではelse ifでelseとifの間に空白があるが、Luaにはない
--6．end : do、if、for、while などのブロックを終了する。C言語の } に対応する。
--7．false : 論理的に偽（false）を表する。C言語も同じである。
--8．for : 指定した回数や範囲で繰り返し処理を行うループを作成する。C言語も同じである。
--9．function : 新しい関数を定義する。C言語にfunctionは存在しないが、関数を定義するための構文はある。
--10．if : 条件に基づいて分岐処理を行う。C言語も同じである。
--11．in : inはforループで範囲や集合の要素を反復処理する際に使う。C言語でinは使用しない。C言語では配列やポインタを使ってループを実装する。
--12．local : ローカルスコープで変数を宣言する。C言語でのローカル変数は { } 内で定義される。
--13．nil : 値が存在しないことを示す。C言語のNULLに対応する。
--14．not : 論理的な否定を行う。C言語の！に対応する。
--15．or : 論理和（OR）を表す。いずれかの条件が真である場合に真を返す。C言語の||に対応する。
--16．repeat : repeatはuntilまで繰り返すループを開始する。untilで指定した条件が真になるまでループを続ける。C言語ではdo-whileループに対応する。
--17．return : 関数からの戻り値を指定する。関数の実行を終了し、指定された値を呼び出し元に返す。C言語も同じである。
--18．then : if文の条件が真である場合に実行されるコードブロックの開始を示す。C言語にthenは存在せず、コードブロック { } で条件が満たされる場合の処理を囲む。
--19．true : 論理的に真を表する。C言語も同じである。
--20．until : repeatループの終了条件を指定する。条件が真になるまでループを続ける。C言語はdo-whileループの条件で同じ機能を実現する。
--21．while : 指定した条件が真である限りループを繰り返す。条件が最初に評価され、条件が偽になるまでループが実行される。C言語も同じである。


--書式指定子
--1．%d : 整数の10進法として出力
--2．%u : 符号なし整数の10進法として出力
--3．%o : 整数の8進法として出力
--4．%x : 整数の16進法として出力
--5．%f : 小数点表示
--6．%c : 1文字出力
--7．%% : ％を出力

--算術演算子
--1．+ : 加算
--2．- : 減算
--3．* : 乗算
--4．/ : 除算
--5．// : 整数除算
--6．% : 剰余
--7．^ : 累乗（C言語のpowに対応）

--比較演算子
--1．== : 等しい
--2．~= : 等しくない（C言語の!＝に対応）
--3．> : より大きい
--4．< : より小さい 
--5．>= : 以上
--6．<= : 以下

--論理演算子
--1．and : 論理積、両方の条件が真である場合に真を返す。（予約語一覧の1番参照）
--2．or : 論理和、両方の条件が真である場合に真を返す。（予約語一覧の15参照）
--3．not : 論理否定、両方の条件が真である場合に真を返す。（予約語一覧の14参照）

--ビット演算子（Lua 5.3以降）
--1．& : ビットAND、二つのビット列の論理積を計算する。
--2．| : ビットOR、二つのビット列の論理和を計計算する。
--3．~ : ビットXOR、二つのビット列の排他的論理和を計算する。
--4．<< : ビットシフト左、ビット列を左にシフトする。
--5．>> : ビットシフト右、ビット列を右にシフトする。

--連結演算子
--1．.. : 文字列連結、二つの文字列を連結する。

--その他の演算子
--1．# : 長さ演算子、テーブルや文字列の長さを取得する。
--長さ演算子の例文
local list = {1, 2, 3}
local length = #list  -- length は 3

local str = "Hello"
local str_length = #str  -- str_length は 5

--データタイプ
1．nil : 予約語一覧の11番参照
2．Boolean : trueとfalseの2つの値のみを持ち、論理演算で使用される。C99以降ではBool型が追加され、trueとfalseをサポートしている。それ以前は0と1を使用。
3．Number : 基本的に浮動小数点数として扱われるが、Lua 5.3からは整数型と浮動小数点型が分かれている。C言語はint, float, doubleなどのさまざまな数値型があり、型を明示的に指定する必要がある。
4．String : 文字列は文字の連続で構成されるデータ型である。文字列は不変(immutable)であり、さまざまな文字列操作関数が提供されている。
5．Table : Luaにおける最も重要なデータ構造であり、配列、辞書、オブジェクトなどさまざまな形で使用できる。テーブルはキーと値のペアで構成され、Luaのすべてのデータ構造は基本的にテーブルに基づいている。
6．function : Luaでは関数は一級オブジェクト(first-class object)として扱われ、変数に代入したり、関数の引数として渡したり、他の関数から返したりすることができる。Luaの関数はクロージャ(closure)機能をサポートし、関数が定義された環境を記憶することができる。
7．Userdata : LuaでC言語で書かれた外部データを処理するために使用される型である。ユーザーデータはLuaで直接扱うのが難しいデータをCで処理できるようになる。
8．Thread : Luaの協調的マルチタスキングをサポートする型で、コルーチン(coroutine)を使って並行処理のフローを制御できる。

作成中．．．

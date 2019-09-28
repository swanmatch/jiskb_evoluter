# JIS Keyboard Evoluter

小指に負担がかかりがちな通常のキーボードを、
自作キーボードのように、
ホームポジションからなるべく手を動かさずに
PC操作できるようにするエミュレータです。

自作キーボード気になってるけど、
レイヤーとか使いこなせるか不安…みたいな人に
とりあえず使ってみてほしい。


# 使い方

「jiskb_evoluter.exe」をダウンロードしてダブルクリックしてください。


## レベル1

* 変換キーでEnter
* 無変換キーでBackSpace
* Space長押しでShiftキー
* CapsLockでEscキー
* カタカナキーでDeleteキー
* Ctrl+Spaceで全角半角切替
* Alt単発押しでF5(ブラウザなどの更新)

↑だけでもかなり快適です。


## レベル2

変換キーを押している間以下のようにキー配列を置き換えます。  
自作キーボードのレイヤー相当の機能です。

```c
/* 
 * ,-----------------------------------------------------------------------------------------.
 * |     |     |     |     |     |     |     |     |     |     |     |     |     |     |     |
 * |-----------------------------------------------------------------------------------------+
 * |       | F1  | F2  |PgUp | F4  | F5  | F6  | F7  | Up  | F9  | F10 |     |     |         |
 * |----------------------------------------------------------------------------------       +
 * |         |  ~  |Home |PgDwn| End |  (  |  )  |Left |Down |Right|  |  |     |     |       |
 * |-----------------------------------------------------------------------------------------+
 * |            |  ^  |     | F3  |     |     |     | F11 | F8  | F12 |  \  |     |          |
 * |-----------------------------------------------------------------------------------------+
 * |      |      |      |     |   Space    |*****|     |      |      |      |      |         |
 * |-----------------------------------------------------------------------------------------+
 */
```

**【解説】**

JKLIでのカーソル移動は最初の抵抗を乗り越えればかなり楽になるはずです。  
左手SDFEのHome,End,PageDown,PageUpは標準配列だとかなり遠くにあるのと、
あまり直感的でない配置になっているので、十字キーっぽくするとカーソル移動が直感的なります。

よく使うかっこをGHに割り当てて左右対称にしています。

ファンクションはどうしてもごちゃごちゃした配列になってしまい、
慣れるのに時間がかかるかもしれませんが、標準配列だとかなり遠くにあるので、
腕の移動なくして押せないのでQ列で押せるようにしています。  
(F12はともかく、F3,F8,F11とか滅多に使わない。)



## レベル3

無変換キーを押している間以下のようにキー配列を置き換えます。  


```c
/* 
 * ,-----------------------------------------------------------------------------------------.
 * |     |     |     |     |     |     |     |     |     |     |     |     |     |     |     |
 * |-----------------------------------------------------------------------------------------+
 * |       |  1  |  2  |  3  |  4  |  5  |  6  |  7  |  8  |  9  |     |     |     |         |
 * |----------------------------------------------------------------------------------       +
 * |         |  @  |  #  |  $  |  %  |  [  |  ]  |  4  |  5  |  6  |     |     |     |       |
 * |-----------------------------------------------------------------------------------------+
 * |            |  `  |  &  |  *  |  !  |  {  |  }  |  1  |  2  |  3  |     |     |          |
 * |-----------------------------------------------------------------------------------------+
 * |      |      |      |*****|     00     |  0  |     |      |      |      |      |         |
 * |-----------------------------------------------------------------------------------------+
 */
```

**【解説】**

記号と数字の配列です。  
記号レイヤーは英字配列ベースで、一時ずらしています。  
(！始まりではなく@始まり)  
＠、＃、＄をそれぞれ頭文字のA、S、Dにしたほうが覚えやすかったためです。  

最上段は数字ですが、右手でテンキー風の入力が可能になっています。

レベル2同様「」と{}をGH、BNで左右対称で打てます。


## レベル4

JISキーボードしか使ったことがない人には覚えにくいと思いますので、
ソース/Exeを分けています。(jiskb_evoluter_us)  

* れ → :/;
* け → "/'
* ろ → -/_
* ＠ → =/+

英字キーボード風の記号割り当てに変更していますが、
Vimが使いにくいため、:と;だけ入れ替えています。  
(たぶんちょいちょいうまくいってないところがあります。)


# カスタマイズ

[AutoHotKey](https://www.autohotkey.com/)をインストールして、
*.ahkファイルをテキストエディタで編集して、ダブルクリックするだけです。


# 気に入りましたか？気に入りませんでしたか？

### 親指でエンターやバックスペースを押すのを気に入った方
自作キーボードに向いています。  
ぜひチャレンジしてみてください。

### あまり気に入らなかった方
変換/無変換を活用する形にしていますが、
残念ながらそもそもあまり押しやすい位置にあるとは言えません。  
自作キーボードであれば親指の押しやすい位置にたくさんキーを配置するので、
もっと自然にレイヤーを活用したタイピングできます。

SpaceShiftなんかは実はソフト制御だと時々押しっぱなし扱いになってしまったりします。
でも自作キーボード（ハードウェア制御）であれば、そういう現象はまず起きません。  

# まとめ

** 自作キーボードを始めよう！ **

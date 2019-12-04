;The・ゼミ面接！
[title name="The・ゼミ面接！"]

*start

[cm]
[clearfix]
[start_keyconfig]

[bg storage="danlab.jpg" time="100"]

;メニューボタンの表示
@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left="40" top="720" width="1200" height="200" page="fore" visible="true"]

;文字が表示される領域を調整
[position layer="message0" page="fore" margint="45" marginl="50" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer="message0" visible="true"

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size="36" x="50" y="724"]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;このゲームで登場するキャラクターを宣言
[chara_config talk_focus="brightness"]
;dan
[chara_new name="dan" storage="./chara/k_dan.png" jname="だん"]
;student
[chara_new name="student" storage="./chara/k_student.png" jname="学生"]

;@playbgm time="3000" storage="interview.ogg" loop="true"

[eval exp="point=0"]

[chara_show name="dan" left="800" top="200"]
#dan
次の方、どうぞ！[p]

[chara_show name="student" left="0" top="320"]
#student
よろしくお願いします。[p]

#dan
さぁ、これからゼミの選考面接を始めます。[p]
今日のために何か準備してきましたか？

#student
[glink graphic="./button.png" width="160" height="48" x="260" y="100" text="はい！"   target="*select1"]
[glink graphic="./button.png" width="160" height="48" x="260" y="170" text="いいえ。" target="*select2"]
[glink graphic="./button.png" width="160" height="48" x="260" y="240" text="えっ？"   target="*select3"]
[s]

*select1
#dan
素晴らしい！[p]
[jump target="*Q1"]

*select2
#dan
そうですか…[p]
[jump target="*Q1"]

*select3
#dan
大丈夫かな～[p]
[jump target="*Q1"]



*Q1
#dan
では、問題です。[l]
情報技術の略は何？

#student
[glink graphic="./button.png" width="160" height="48" x="260" y="100" text="ＩＴ" target="*Q1_select1"]
[glink graphic="./button.png" width="160" height="48" x="260" y="170" text="ＳＥ" target="*Q1_select2"]
[glink graphic="./button.png" width="160" height="48" x="260" y="240" text="ＰＧ" target="*Q1_select3"]
[s]

*Q1_select1
#dan
正解です。[p]
[eval exp="point+=30"]
[jump target="*Q2"]

*Q1_select2
#dan
システムエンジニアのことだよ。[p]
[jump target="*Q2"]

*Q1_select3
#dan
プログラマのことだよ。[p]
[jump target="*Q2"]



*Q2
#dan
次のうち、プログラミング言語はどれ？

#student
[glink graphic="./button.png" width="160" height="48" x="260" y="100" text="英語"     target="*Q2_select1"]
[glink graphic="./button.png" width="160" height="48" x="260" y="170" text="ドイツ語" target="*Q2_select2"]
[glink graphic="./button.png" width="160" height="48" x="260" y="240" text="Ｃ言語"   target="*Q2_select3"]
[s]

*Q2_select1
#dan
しっかり勉強しましょう。[p]
[jump target="*Q3"]

*Q2_select2
#dan
ソーセージは最高だよ♪[p]
[jump target="*Q3"]

*Q2_select3
#dan
よくできました！[p]
[eval exp="point+=30"]
[jump target="*Q3"]



*Q3
#dan
インターネットのプロトコルは何？

#student
[glink graphic="./button.png" width="160" height="48" x="260" y="100" text="ＳＭＴＰ"     target="*Q3_select1"]
[glink graphic="./button.png" width="160" height="48" x="260" y="170" text="ＴＣＰ／ＩＰ" target="*Q3_select2"]
[glink graphic="./button.png" width="160" height="48" x="260" y="240" text="ＦＴＰ"       target="*Q3_select3"]
[s]

*Q3_select1
#dan
メール送信のプロトコル。[p]
[jump target="*End"]

*Q3_select2
#dan
お見事！[p]
[eval exp="point+=30"]
[jump target="*End"]

*Q3_select3
#dan
ファイル転送のプロトコル。[p]
[jump target="*End"]



*End
#
[cm]
[fadeoutbgm]
[chara_hide name="dan"]
[chara_config talk_focus="none"]
[chara_move name="student" time="300" width="640" left="240" top="0"]
[position layer="message0" left="40" top="40" width="1200" height="240" page="fore" visible="true"]
[font size=48]
[if exp="point>50"]
あなたは合格です！[p]
[else]
[quake time="300"]
残念ながら不合格…[p]
[endif]



[s]

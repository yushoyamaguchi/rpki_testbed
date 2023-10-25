# 状態
## OpenBGPDのトポロジ状態
上から4,1,2,3,5

## ASPA
- 3の上は5
- 2の上は1か3

# メモ
3の上は5のASPAだけでもinvalidになった
<br>
多分、downstreamをinvalidとすることは難しい
<br>
RTRサーバと繋がずにaspa-setを指定しても、うまく検証できていないように見えた
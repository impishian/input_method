用[测评网站](http://assess.tiger-code.com/) 比较多种单字输入方案，常用 6000 字的静态重码率。

加权统计的重码率如下：

```
虎码 (0.01%) < 五笔86 (0.14%) <

自然虎形 或 小鹤虎形 (0.38%~0.54%) < 自然表形 (0.79%~1.02%) <

小鹤音形 (1.01%~1.38%) < 自然码 (2%~2.95%) < 

纯双拼 (45%~52%)
```

虎码、五笔的数据，直接取自测评网站。 其他6种，是用 “8105单字码表” 目录下的文件上传、测评，所得到的数据。

## 1. 虎码

<img width="556" alt="image" src="https://github.com/user-attachments/assets/47252841-c7b1-42cb-a171-76ee383ac032">

## 2. QQ五笔86

<img width="559" alt="image" src="https://github.com/user-attachments/assets/38087388-6633-44cc-aa77-d25e25619e83">

## 3. 自然虎形 / 小鹤虎形

双拼（自然码方案）+ 虎码首末

<img width="510" alt="image" src="https://github.com/user-attachments/assets/7ae8e28e-662e-4c5c-ac70-b722b8e6d605">

BTW，小鹤虎形，也就是：双拼（小鹤方案）+ 虎码首末， 与 自然虎形，基本差不多。 

重码数据跟上表完全一样。 左右手：自然虎形 50.03% : 49.97%，小鹤虎形 50.93% : 49.07%

## 4. 自然表形

双拼（自然码方案）+ 表形码首末

<img width="512" alt="image" src="https://github.com/user-attachments/assets/cb5f10b2-39b1-4801-80aa-805b8b0b5634">

## 5. 小鹤音形

小鹤双拼 + 小鹤形辅

<img width="508" alt="image" src="https://github.com/user-attachments/assets/a758a338-2608-429c-bbb7-424264b82e1f">

## 6. 自然码

自然双拼 + 自然形辅

<img width="512" alt="image" src="https://github.com/user-attachments/assets/7a89aa7d-3a22-4678-9051-a4fe5b951dd7">

## 7. 纯双拼

无辅码

<img width="531" alt="image" src="https://github.com/user-attachments/assets/27498dd6-3406-4ea2-8ed0-36f7c75bbd7d">

## 8. 自然表形 补充字的 首末码

自然表形，是参考 [小鹤表形](https://tieba.baidu.com/p/8528130134) 里的 2万多字的码表，再补充 284 字的编码，得到 zrm_bx_8105.txt，来评测的。

补充的字，是为了凑够 8105 标准规范字，虽然可能不需这么做（因为只需6000常用字参与评测）。

```
A   B   C  D
一  hh  啊
了  wz  阿
不  th  吖
有  xn  锕
个  vi  腌
...

A列：2万多字 + 284补充字
B列：A列字的编码

C列：8105字
D列：8105字的编码

D2公式为：
=IFERROR(VLOOKUP(C2, A:B, 2, FALSE), "")

copy & paste 公式到： D3, D4, ... 
```

284 个补充字：

```
𨭉	iz
𠳐	ow
𬇙	dr
𨚕	uw
𰻝	nz
𬭛	za
𬷕	fs
䅟	ug
𥕢	pb
𤭢	ia
𥻗	gh
𬊤	rt
𬬮	zk
㬚	ba
𬘭	wm
𫄨	we
㳘	dw
䝙	qx
䢺	ep
𬺓	yv
䲠	ub
𬭚	zz
𫚖	yu
鿎	pz
𨱏	zo
𫟼	zz
𫢸	vt
𬘘	ww
𣗋	mw
𬍡	dd
䃅	pt
䗖	ce
𤧛	ie
𬱖	yr
𫶇	ee
𬟽	cl
𬭊	zy
㨃	fz
㙍	ya
𥔲	ps
𫫇	ou
𫔍	zq
𬸪	us
𬴂	sx
𣸣	dr
㕮	ox
㳇	dx
𫓧	zr
𫖯	xr
𬮿	pl
㽏	db
㭎	mx
鿍	yf
𬒔	pn
䢼	sp
𦙶	no
𨐈	lw
𬇹	dd
㘎	oa
𬌗	ro
𬭶	zd
𬣳	ik
𫟹	zg
𬭎	zu
𬭤	zr
㬊	ba
𤩽	id
𬘫	ww
㿠	jw
𨱑	zg
㧑	fd
𬤝	iu
𬭬	ze
㸌	ri
𬴃	sp
㴔	du
𪟝	yx
𫌀	tr
𫓯	zy
𫓹	zg
𬯀	pg
𬶨	pu
𬶭	ug
𬂩	mg
𬣡	is
䴔	is
㛃	fa
𬬱	zt
䴖	ys
䌹	wo
𬳶	so
㠇	ed
䴗	bs
𬶋	uo
㵐	dv
𫔎	zo
𫘝	sr
䐃	nu
𡐓	yx
𩾌	ux
㸆	rx
𫸩	wx
㧟	fc
𫛭	qs
𫠆	xr
𬶟	ug
𬒗	pw
㫰	bk
㮾	dm
𫭼	yx
㰀	mx
𫵷	ex
𬍛	ij
𬶠	um
𫟅	wg
𬜯	hn
𪤗	yg
䴕	hs
𫚭	ug
𬭸	zf
𬴊	sf
〇	oo
㥄	la
𬕂	kr
䁖	ba
𦝼	na
𪣻	ya
𫘧	sx
𬬻	zp
𫭢	yl
𬬭	zl
𦝼	na
䂮	fp
鿏	za
𬜬	ho
𫞩	in
㠓	eq
𫑡	op
𩾃	uw
𬙊	wy
𧿹	eq
𬭁	zq
𦰡	hp
𨺙	pw
𫐐	lw
𫠜	yw
𫔶	nm
𬪩	sk
𦰡	hp
𠙶	wu
𬉼	rx
䴙	ps
𬳵	sh
㛹	ar
𡎚	yh
𬭯	za
𬞟	hr
䥽	zd
䓫	ho
𨙸	xp
𬨂	lw
𬘬	wn
䓖	hx
𨱇	zd
㭕	mu
䓛	hu
𪨰	es
𫭟	yx
𨟠	bp
𬒈	gp
䎃	ne
𫐓	lm
𫮃	yt
𪨶	el
𬬹	zf
𬳽	sw
䏡	ng
䴓	ts
𫚕	ut
𬤊	iv
𬬸	zd
㟃	ho
𪨊	pv
㧐	fa
𫗧	km
𫟦	lz
𬭼	zz
鿎	pz
䣘	op
𫘦	su
䲢	nu
䏲	nj
䴘	jn
𫘨	sv
䗴	cz
𬘩	wz
㛚	af
𦒍	ie
𫍣	io
㻬	is
𬳿	sm
𬯎	pr
𬶍	ul
𬇕	dh
𣲗	df
𫇭	hd
𬀩	bf
𬱟	hr
𬶏	ul
𫘜	sx
𬭩	ze
𣲘	dw
𠅤	iu
𫘬	sr
𬭳	zo
𬶮	uo
㬎	bd
𪾢	bw
𫍯	io
𬀪	bw
𬸣	ns
𬙋	wk
𫍲	ia
㙦	vy
𤫉	ia
𬹼	yg
䜣	it
𫷷	jv
𫰛	ai
䗛	cn
㳚	ds
𦈡	wg
𬣙	it
𫍽	ik
𫓶	zn
𫠊	sw
𫄸	wd
𬊈	rd
𬍤	id
𬘓	wg
𬩽	ep
䶮	wr
𪩘	ed
𫄧	wz
𬙂	wg
𬸘	cs
㙘	ya
㑊	vx
𫄷	wu
𫖮	er
𬟁	hs
𬬩	zs
𬺈	yo
䲟	up
𬘡	wr
𬤇	iy
𬮱	ny
䓨	hu
㶲	rf
𬨎	fs
㺄	qg
𫘪	sg
𫐄	lw
𬸚	qs
𫖳	pr
𥖨	pm
䎖	ge
䃎	pd
𫗴	kh
𬬿	zo
𬶐	ux
䗪	jc
𦭜	hg
𬃊	mr
㑇	ve
㤘	le
𬣞	ih
䏝	ns
𬘯	wz
䓬	hx
䦃	zb
𬸦	is
𨱔	zd
𩽾	ua
```


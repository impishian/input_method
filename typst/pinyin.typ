#set page(paper: "a4", flipped: true, margin: (top: 0.4cm, bottom: 0.3cm, left: 0.6cm, right: 0.4cm))
#set text(font: ("印氪先生汉语拼音 人教版W3", "Songti SC"), size: 9.4pt, lang: "zh", region: "cn")
#set par(justify: false)

#let mygray = luma(191) // gray .75  -> rgb 192,192,192
#let redbox(s) = box(stroke: (paint: red, thickness: 0.5pt), inset: (x: 0pt, y: 0pt), outset: 2pt, fill: white)[#s]
#let red = rgb("#d50000")
#let blue = rgb("#0000ee")

// 韵\声 斜线格  —— 模拟 \diagbox{韵}{声}
// 左下 韵，右上 声，对角线分隔
#let diagbox = {
  box(width: 100%, height: 17pt, {
    place(left + bottom, dx: 4pt, dy: -3pt, text(size: 9.8pt)[韵])
    place(right + top, dx: -4pt, dy: 1pt, text(size: 9.8pt)[声])
    place(line(start: (0%, 0%), end: (100%, 100%), stroke: 0.45pt))
  })
}

// narrow vertical category cell helper: splits characters vertically
#let vcat(s) = {
  // s like "单韵母": stack vertically centered
  align(center + horizon, text(size: 9.8pt, weight: "regular")[
    #for ch in s.clusters() {
      box(width: 100%)[#align(center)[#ch]]
    }
  ])
}

#show table.cell: it => {
  // reduce inset to match arraystretch 0.9
  it
}

#block(width: 100%)[
#align(center, {
  // 模拟 LaTeX: \resizebox{\textwidth}{!} + adjustbox margin 0.1ex + arraystretch 0.9
  table(
    columns: (18pt, 35pt) + (1fr,) * 15 + (40pt,40pt,40pt,) + (1fr,) * 6,
    align: center + horizon,
    stroke: 0.45pt,
    inset: (x: 1pt, y: 3pt),
    fill: (col, row) => {
      // header row gray, second column gray
      if row == 0 { mygray }
      else if col == 1 { mygray }
      else { white }
    },

    // Header  \rowcolor{mygray} + \diagbox
    table.cell(colspan: 2, fill: mygray, stroke: 0.45pt, align: center + horizon)[#diagbox],
    [无], [b], [p], [m], [f], [d], [t], [n], [l], [g], [k], [h], [j], [q], [x], [zh], [ch], [sh], [r], [z], [c], [s], [y], [w],

    // 单韵母 6 rows
    table.cell(rowspan: 6, align: center + horizon)[#vcat("单韵母")], [a], [a], [ba], [pa], [ma], [fa], [da], [ta], [na], [la], [ga], [ka], [ha], [], [], [], [zha], [cha], [sha], [], [za], [ca], [sa], [], [],
    [o], [o], [bo], [po], [mo], [fo], [], [], [], [lo咯], [], [], [], [], [], [], [], [], [], [], [], [], [], [yo哟], [],
    [e], [e], [], [], [me], [], [de], [te], [ne], [le], [ge], [ke], [he], [], [], [], [zhe], [che], [she], [re], [ze], [ce], [se], [], [],
    [i], [], [bi], [pi], [mi], [], [di], [ti], [ni], [li], [], [], [], [ji], [qi], [xi], [#redbox[ zhi ]], [#redbox[ chi ]], [#redbox[ shi ]], [#redbox[ ri ]], [#redbox[ zi ]], [#redbox[ ci ]], [#redbox[ si ]], [#redbox[ yi ]], [],
    [u], [], [bu], [pu], [mu], [fu], [du], [tu], [nu], [lu], [gu], [ku], [hu], [], [], [], [zhu], [chu], [shu], [ru], [zu], [cu], [su], [], [#redbox[ wu ]],
    [#text(fill: red)[ü]], [], [], [], [], [], [], [], [#text(fill: red)[nü]], [#text(fill: red)[lü]], [], [], [], [#text(fill: red)[ju]], [#text(fill: red)[qu]], [#text(fill: red)[xu]], [], [], [], [], [], [], [], [#redbox[#text(fill: red)[yu]]], [],

    // 复韵母 9 rows
    table.cell(rowspan: 9, align: center + horizon)[#vcat("复韵母")], [ai], [ai], [bai], [pai], [mai], [], [dai], [tai], [nai], [lai], [gai], [kai], [hai], [], [], [], [zhai], [chai], [shai], [], [zai], [cai], [sai], [], [],
    [ei], [ei㗒], [bei], [pei], [mei], [fei], [dei得], [], [nei], [lei], [gei], [kei剋], [hei], [], [], [], [zhei这], [], [shei], [], [zei], [], [], [], [],
    [ui/uei], [], [], [], [], [], [dui], [tui], [], [], [gui], [kui], [hui], [], [], [], [zhui], [chui], [shui], [rui], [zui], [cui], [sui], [], [wei],
    [ao], [ao], [bao], [pao], [mao], [], [dao], [tao], [nao], [lao], [gao], [kao], [hao], [], [], [], [zhao], [chao], [shao], [rao], [zao], [cao], [sao], [], [],
    [ou], [ou], [], [pou], [mou], [fou], [dou], [tou], [nou耨], [lou], [gou], [kou], [hou], [], [], [], [zhou], [chou], [shou], [rou], [zou], [cou], [sou], [], [],
    [iu/iou], [], [], [], [miu], [], [diu], [], [niu], [liu], [], [], [], [jiu], [qiu], [xiu], [], [], [], [], [], [], [], [you], [],
    [ie], [], [bie], [pie], [mie], [], [die], [tie], [nie], [lie], [], [], [], [jie], [qie], [xie], [], [], [], [], [], [], [], [#redbox[ ye ]], [],
    [#text(fill: red)[üe]], [], [], [], [], [], [], [], [#text(fill: red)[nüe]], [#text(fill: red)[lüe]], [], [], [], [#text(fill: red)[jue]], [#text(fill: red)[que]], [#text(fill: red)[xue]], [], [], [], [], [], [], [], [#redbox[#text(fill: red)[yue]]], [],
    [er], [er], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [],

    // 前鼻韵母 5 rows
    table.cell(rowspan: 5, align: center + horizon)[#vcat("前鼻韵母")], [an], [an], [ban], [pan], [man], [fan], [dan], [tan], [nan], [lan], [gan], [kan], [han], [], [], [], [zhan], [chan], [shan], [ran], [zan], [can], [san], [], [],
    [en], [en], [ben], [pen], [men], [fen], [den扽], [], [nen], [], [gen], [ken], [hen], [], [], [], [zhen], [chen], [shen], [ren], [zen], [cen], [sen], [], [],
    [in], [], [bin], [pin], [min], [], [], [], [nin], [lin], [], [], [], [jin], [qin], [xin], [], [], [], [], [], [], [], [#redbox[ yin ]], [],
    [un/uen], [], [], [], [], [], [dun], [tun], [], [lun], [gun], [kun], [hun], [], [], [], [zhun], [chun], [shun], [run], [zun], [cun], [sun], [], [wen],
    [#text(fill: red)[ün]], [], [], [], [], [], [], [], [], [], [], [], [], [#text(fill: red)[jun]], [#text(fill: red)[qun]], [#text(fill: red)[xun]], [], [], [], [], [], [], [], [#redbox[#text(fill: red)[yun]]], [],

    // 后鼻韵母 4 rows
    table.cell(rowspan: 4, align: center + horizon)[#vcat("后鼻韵母")], [ang], [ang], [bang], [pang], [mang], [fang], [dang], [tang], [nang], [lang], [gang], [kang], [hang], [], [], [], [zhang], [chang], [shang], [rang], [zang], [cang], [sang], [], [],
    [eng], [eng鞥], [beng], [peng], [meng], [feng], [deng], [teng], [neng], [leng], [geng], [keng], [heng], [], [], [], [zheng], [cheng], [sheng], [reng], [zeng], [ceng], [seng], [], [],
    [ing], [], [bing], [ping], [ming], [], [ding], [ting], [ning], [ling], [], [], [], [jing], [qing], [xing], [], [], [], [], [], [], [], [#redbox[ ying ]], [],
    [ong], [], [], [], [], [], [dong], [tong], [nong], [long], [gong], [kong], [hong], [], [], [], [zhong], [chong], [], [rong], [zong], [cong], [song], [], [],

    // 韵母组合 12 rows
    table.cell(rowspan: 12, align: center + horizon)[#vcat("韵母组合")], [ia], [], [], [], [], [], [dia嗲], [], [], [lia], [], [], [], [jia], [qia], [xia], [], [], [], [], [], [], [], [ya], [],
    [iao], [], [biao], [piao], [miao], [], [diao], [tiao], [niao], [liao], [], [], [], [jiao], [qiao], [xiao], [], [], [], [], [], [], [], [yao], [],
    [ian], [], [bian], [pian], [mian], [], [dian], [tian], [nian], [lian], [], [], [], [jian], [qian], [xian], [], [], [], [], [], [], [], [yan], [],
    [iang], [], [], [], [], [], [], [], [niang], [liang], [], [], [], [jiang], [qiang], [xiang], [], [], [], [], [], [], [], [yang], [],
    [iong], [], [], [], [], [], [], [], [], [], [], [], [], [jiong], [qiong], [xiong], [], [], [], [], [], [], [], [yong], [],
    [ua], [], [], [], [], [], [], [], [], [], [gua], [kua], [hua], [], [], [], [zhua], [chua歘], [shua], [rua挼], [], [], [], [], [wa],
    [uo], [], [], [], [], [], [duo], [tuo], [nuo], [luo], [guo], [kuo], [huo], [], [], [], [zhuo], [chuo], [shuo], [ruo], [zuo], [cuo], [suo], [], [wo],
    [uai], [], [], [], [], [], [], [], [], [], [guai], [kuai], [huai], [], [], [], [zhuai], [chuai], [shuai], [], [], [], [], [], [wai],
    [uan], [], [], [], [], [], [duan], [tuan], [nuan], [luan], [guan], [kuan], [huan], [], [], [], [zhuan], [chuan], [shuan], [ruan], [zuan], [cuan], [suan], [], [wan],
    [#text(fill: red)[üan]], [], [], [], [], [], [], [], [], [], [], [], [], [#text(fill: red)[juan]], [#text(fill: red)[quan]], [#text(fill: red)[xuan]], [], [], [], [], [], [], [], [#redbox[#text(fill: red)[yuan]]], [],
    [uang], [], [], [], [], [], [], [], [], [], [guang], [kuang], [huang], [], [], [], [zhuang], [chuang], [shuang], [], [], [], [], [], [wang],
    [ueng], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [weng],

    // Notes - one cell, with four lines of text
    table.cell(colspan: 26, align: left, fill: white, inset: (x: 8pt, y: 7.1pt))[
      1.《新华字典》第12版 共 #text(fill: red)[416] 种声韵组合（比第11版多2种），上表无 #text(fill: blue)[ê 诶欸 hm 噷 hng 哼 m 呒呣 n 唔嗯 ng 唔嗯] 等 #text(fill: red)[6] 种，上表共 #text(fill: red)[410] 种声韵组合。#linebreak()
      2. 汉字十余万个，八成罕用字仅用于古籍，甚至无读音。《新华字典》收录规范化的现代常用字约一两万。拼音输入法能打出的某些罕见字音，比如：#text(fill: blue)[nun 黁 tei 忒 fiao 覅] 未收入《新华字典》。#linebreak()
      3. 声母 #text(fill: red)[23] 个。韵母 #text(fill: red)[24] 个，从a行到ong行。#redbox[红框]：#text(fill: red)[16] 个整体认读音节，速记：“只吃十日，自此思，义乌鱼。夜，月圆印云影”。#text(fill: red)[红色]：有 #text(fill: red)[ü] 的组合，ü遇 jqxy 省两点，遇 nl 不省。#linebreak()
      4. #text(fill: red)[y 列和 w 列]：i/u/ü打头的韵母不能无声母。i/ü前要改为y或加y。u前要改为w或加w。iu、ui、un 本为 iou、uei、uen ，故 you、wei、wen 分别归 iu、ui、un 行。
    ],
  )
})
]

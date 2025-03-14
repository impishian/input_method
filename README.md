# 汉字输入法

## 1. 汉字

最新的国际标准 Unicode 15.1 包含了约 97,681 个汉字，从基本的 CJK 字符到增补的 CJK-A 至 CJK-I，涵盖了东亚汉字文化圈各地区的古今汉字。

对于大多数人来说，几乎不会用到这近十万个汉字的许多字，除非是从事古汉语等方面的相关工作。即使是《四库全书》，也用不到其中的许多字。

一般人掌握三四千个汉字就能满足现代汉语日常交流中 99.9% 以上的需求。日本目前使用的日文汉字约有两千个。

|  字典/辞典/词典   | 用字数 | 备注 |
|-------|-------|-------|
|[《新华字典》](https://zh.wikipedia.org/wiki/%E6%96%B0%E5%8D%8E%E5%AD%97%E5%85%B8) 第12版 | 超过13000字|既标拼音，也标注音。在大陆，是“字”的权威。“最受欢迎的字典”和“最畅销的书”两项世界纪录。 |
|[《现代汉语词典》](https://zh.wikipedia.org/wiki/%E7%8E%B0%E4%BB%A3%E6%B1%89%E8%AF%AD%E8%AF%8D%E5%85%B8) 第7版 | 超过13000字，近7万条词|既标拼音，也标注音。在大陆，是“词”的权威。与《新华字典》是同样的编者。|
|[《通用规范汉字字典》](https://www.cp.com.cn/book/366cddb0-1.html)|8105字 | 配套2013年[《通用规范汉字表》](https://zh.wikisource.org/wiki/%E9%80%9A%E7%94%A8%E8%A7%84%E8%8C%83%E6%B1%89%E5%AD%97%E8%A1%A8) 的字典。读者对象：大众读者，教育工作者和新闻出版广播电视工作者，政府政策工作者|
|[《康熙字典》](https://zh.wikipedia.org/wiki/%E5%BA%B7%E7%86%99%E5%AD%97%E5%85%B8)|47043 字 | 世上第一部以“字典”命名的字书。中国辞书史上的一座丰碑。|
|[《汉语大字典》](https://zh.wikipedia.org/wiki/%E6%B1%89%E8%AF%AD%E5%A4%A7%E5%AD%97%E5%85%B8)(第二版) | 60370字| |
|[《汉语大词典》](https://zh.wikipedia.org/wiki/%E6%BC%A2%E8%AA%9E%E5%A4%A7%E8%A9%9E%E5%85%B8)| 22000以上的字，37万5千余条词| |
|[《中华字海》](https://zh.wikipedia.org/wiki/%E4%B8%AD%E5%8D%8E%E5%AD%97%E6%B5%B7)| 85568字| |
|[《中华大字典》](https://zh.wikipedia.org/wiki/%E4%B8%AD%E5%8D%8E%E5%A4%A7%E5%AD%97%E5%85%B8)|57470字| |
|[《辞海》](https://zh.wikipedia.org/wiki/%E8%BE%9E%E6%B5%B7)(大陆第7版) |超过13万条词 (涉及的字，则不明确) | BTW, 台湾最新是第10版|
|[《辞源》](https://zh.wikipedia.org/wiki/%E8%BE%9E%E6%BA%90)第三版|14210字，复词 92646个|
|[《汉字海》](https://www.china-e.com.cn/ZY.html)|正文收列字头单字102434个，附录收列字头单字11112个 | 目前世界上收录汉字最多的工具书。中易(就是郑码的公司)主编.|
|[《國語辭典》](https://zh.wikipedia.org/wiki/%E6%95%99%E8%82%B2%E9%83%A8%E5%9C%8B%E8%AA%9E%E8%BE%AD%E5%85%B8)网络第六版|11930字，152398词|
|[《異體字字典》](https://zh.wikipedia.org/wiki/%E7%95%B0%E9%AB%94%E5%AD%97%E5%AD%97%E5%85%B8)正式七版|106303字|

----

[两岸三地汉字标准](https://github.com/kitty-panics/cn-tables)

[所有 Unicode CJK 字符（近10万字）](https://github.com/kitty-panics/unicode-cjk)

[通用规范汉字表（8105字）](https://github.com/rime-aca/character_set/blob/master/%E9%80%9A%E7%94%A8%E8%A6%8F%E7%AF%84%E6%BC%A2%E5%AD%97%E8%A1%A8.txt)

----

## 2. 拼音

[拼音pdf](https://github.com/impishian/input_method/blob/main/tex/pinyin.pdf) 

根据大陆学校使用的《新华字典》（第12版），拼音共有 416 种声韵组合。除了6种特殊语气词的读音，其他 410 种组合，大多数拼音输入法都支持（这 6 种组合，所对应的 8 个语气词用字，是多音字，可以通过其他声韵组合输入）。

拼音输入法通常使用 26 键打字（不含声调），重码率较高。大陆地区学过拼音的人通常无需额外学习就能上手使用拼音输入法。

## 3. 注音

[注音pdf](https://github.com/impishian/input_method/blob/main/tex/pinyin_zhuyin.pdf) 

列出了 407 种声介韵组合，基本与拼音的组合一致。

注音输入法通常需要用 40 键来打字。注音带声调，比不带声调的拼音理论上重码少一些。注音打字时击键次数少于拼音，但比双拼多，打字节奏不如双拼稳定。台湾学过注音的人，只需了解 40 键与注音符号的对应关系，就能上手使用注音输入法打字。

大陆的《新华字典》不仅标注了拼音，还保留了注音，最新的第 12 版依旧如此。注音符号源自汉字的偏旁部首，大陆人稍加学习也能掌握。

## 4. 粤拼

[粤拼pdf](https://github.com/impishian/input_method/blob/main/tex/Jyutping.pdf) 

列出了 600 多种声韵组合。粤拼输入法，适用于粤语输入。虽然是香港语言学会的方案，可是很多香港人也没学过。

## 5. 郑码（郑易里、郑珑父女）

[中易官网郑码介绍](https://www.china-e.com.cn/li/main/zhengma/jj.htm)

郑码是一种纯形码输入法，基于字根双编码，共有约 186 个字根。无需记忆字根口诀，只需理解笔画规律，先记 52 个主根，再记 134 个副根。

郑码从推出时就是面向大字集的输入法，若以大陆字型为准，比五笔编码更规范，拆字更合理。其双编码设计也影响了近年的一些输入方案。

郑码规则导致的“简全不一致”（简码和词组编码跟全码不同，简码并不是全码前几键），是一些使用者不满意的地方。

## 6. 五笔（王永民）

[王码官网](http://www.wangma.net.cn/)

**五笔是商业推广最成功的形码**。

五笔86版最为流行，使用约 130 个字根，单编码设计，常通过口诀记忆字根。（另有说法：86版使用234个字根，98版使用259个字根，新世纪版使用了226个字根。大概是形似根不归并，统计而得的数）

五笔86版最初只面向 GB2312 字集的 6763 字来设计字根，后来还推出98版、新世纪版等多个版本。先入为主的原因，五笔86版使用者众多。

五笔的末笔交叉识别码，会有些人不满意。另外，有些字拆字别扭。

当然，汉字几千年的演变，非常复杂，没有一种形码，拆字会绝对舒服，绝对规范。没绝对的《规范》可供多国家多地区的所有汉字使用者来遵守。各地的字型不太一样。也没有一个形码是两岸人民都普遍共同推崇的。

输入法小圈子，有各种为了追求极致输入体验的五笔魔改版。

## 7. 仓颉（朱邦復）

[朱邦復工作室](http://www.cbflabs.com/)

[第五代仓颉手册](http://cbflabs.com/book/ocj5/ocj5/index.html)

[倉頡輸入秘笈](https://github.com/impishian/input_method/blob/main/%E5%85%B6%E4%BB%96/%E5%80%89%E9%A0%A1%E8%BC%B8%E5%85%A5%E7%A7%98%E7%AC%88.pdf)

<div align="center">
  <img src="https://github.com/user-attachments/assets/c0962e76-1fbb-4f5e-9766-beb63320fb64" width="60%" />
</div>

仓颉输入法凭视觉（非字义或笔顺）把汉字分割为字首及字身，字首为最左、最上、最外部分，剩余部分为字身。若字身可以再分，则分为次字首和次字身。各部分再分拆为有限个字码（中间部分省略），以不破坏字形特征和视觉容易辨识为准。

字首最多取二码，字身最多取三码；一个汉字最少用一码输入，最长则为五码；整体字则以第一码为字首，其余为自身，故有一到四码。取码以后再按下空白键（组字键），即可输出字符（字形）。仓颉不设简码。

|  汉字  | 分割 | 码数 |	取码	| 键盘上的按键 |
|------|------|------|------|------|
|串	|整体字，无法分割	|最多取 4 码	|中中	|	LL |
|理	|字首：王 . 字身：里	|最多取 2 . 3 码	|一土 . 田土	|	MGWG |
|菇	|字首：艹 . 次字首：女 . 次字身：古	|最多取 2 . 1 . 2 码	|廿 . 女 . 十口	|	TVJR |
|語	|字首：言 . 次字首：五 . 次字身：口	|最多取 2 . 2 . 1 码	|卜口 . 一一 . 口	|	YRMMR |

注︰	基本上，只要将字形一分为二，最左、最上、最外的字首部分，取首、尾二码；其余的字身部分，依规则取三码，则可拆解所有汉字。

仓颉有第三代、第五代，差别不大，还有简化版的速成输入法（或简易输入法）。苍颉，是坊间所称的第六代，但与三代五代差异很大，更像是衍生的输入法。

## 8. 二笔输入法（陈劲松）

二笔输入法曾通过中国教育部评审，进入中小学教材。

二笔输入法取码方法：拼音首字母 + 笔画。输入汉字时，第一码取汉字拼音首字母，从第二码起取笔画，每二笔算一码，最多取四码，不足四码应全取，不能取双笔画时就取单笔画，遇设定部首（如钅、木、氵等）应直接取其代码。

2013年专利期已满。除了原二笔公司的原二笔之外还有很多派生版本，如超强二笔，各种二笔的取码原理基本一致，键盘布局有不同，具体的编码规则存在微小差异，总体上分为两大类：原二笔编码规则和超强二笔编码规则。最早是30键版本，后来有26键、25键的版本，甚至还有28键、27键的。

## 9. 表形码（陈爱文）

表形码的字根形似字母，相对易学易记。有31键、26键的版本。

相交叉的笔画绝不拆分成两个字根，换言之，字根与字根之间没有交叉的笔画。这一点使得拆字的方式非常直观。

由于商业纠纷和推广力度等原因，用户数远不及五笔等形码。

示例：“吼”字－拆分为－O+Z+L = OZL，“啊”字－拆分为－O+P+T+O = OPTO

[表形码爱好者网盘](http://bxm.ysepan.com/?xzpd=1)

[关于表形码的一段往事](https://blog.sina.com.cn/s/blog_4a20485e01000b8b.html)

[表形码与我国的语言学](http://www.yywzw.com/pan/pan-03d-004.htm)

## 10. 自然码（双拼+形）（周志农）

[自然码官网](http://www.ziranma.com.cn/)

自然码是双拼和音形码的鼻祖之一。通过声韵各一键打字，节奏稳定，与全拼（完整的拼音）相比，可减少击键。

自然码辅助码，可减少同音字的重码。（有双辅方案、单辅方案，即：双码、单码的辅码）

自然码官方自2009年就停止了更新。不少爱好者，在主流输入法软件里中定制实现自然码输入方案。

## 11. 双拼

|     | 常见方案 | 不太常见方案 | 爱好者方案 |
|------|------|------|------|
| 1 |自然码 |国标 |小浪 |
| 2 |微软 | 雅歌 |大牛 |
| 3 |智能ABC|徐氏|键道3 |
| 4 |拼音加加|蓝天|键道6 |
| 5 |小鹤|白云|星空 |
| 6 |搜狗|新华|开源小鹤 |
| 7 |紫光|UCDOS|小月 |
| 8 | | |韵标 |
| 9 | | |C双拼 |
| 10 | | |飞猫 |

其中自然码、小鹤音形与雅歌为音形输入法，“前两码音码”+“后两码形码”（形码是辅助码，也可不输，只输入双拼音码）。

## 12. 虎码 (PeaceB)

[虎码官网](https://tiger-code.com/)

虎码使用 241 个字根，字根双编码设计，字根排列不遵循固定规律。

官网提供工具辅助记字根。取码规则简单。大字根，拆字轻松。重码极低，使用体验佳。

(1) 字根

虎码把五笔、郑码的主要字根绝大部分都收了进来，再加了几十个字根，因此，字根数比五笔、郑码都多了不少。

为了低重码和好手感，虎码是按特定的计算机算法，将各字根安排在特定的键，不像五笔或郑码那样人为地按一定的规律排布。字根完全乱序。

通过官网的工具来辅助记忆，不难记住字根。（像打游戏一样，练习超过3万分，则字根基本过关）

虎码像郑码一样采用双编码，一个字根，有大码、小码（小码音托。不懂拼音者可另想办法记小码，问题也不大）。

不要像五笔那样背字根，可用 241 个词语来记（比如：通用的 "用" Ty，方且的 "且" Fq，誓言的 "言" Sy，地里的 "里" Dl ...）

虎码面向大字符集。字根多，打字体验就比较好。像搭积木一样，能轻易搭出各种字。比五笔更容易拆字、重码少、极少的无理码。

(2) 规则

**虎码，是取码规则最简单的形码**

五笔、郑码等，需要看书或通过打字培训班来学习掌握复杂的规则、特例，甚至还要记无理码。 

虎码规则大致如下（ ① 大写字母：大码；② 小写字母：小码；③ 2表示取两根：Aa 或 AB）：

|     | 一 | 二 | 三 | 多 | 备注 |
|------|------|------|------|------|------|
| 字 | 一根<br>Aa |二根<br>ABb|三根<br>ABCc|多根<br>ABCZ| 一句话：打各字根大码，不够4码补最后字根小码 |
| 词 | | 双字<br>2+2|三字<br>A+A+2|多字<br>A+A+A+...+A|  |

虎码官网，很简洁，有关于虎码的所有内容，不需要再看书或跟老师学。 

(3) [虎码测评网](http://assess.tiger-code.com/)

这是虎码网站上提供的一个测评工具。

任何四码输入方案的码表（当然，必要时需转换一下格式），上传到该工具，便可测评该输入方案在常用6000字集的表现情况：

① 离散情况：用1/2/3/4码能打出的字，分别占比有多少，静态重码率多少；

② 效率：理论二简，加权键长；

③ 手感：左右互击、手指跨排、 同指/同键连打 ... 等。

## 13. RIME 中州韵输入法引擎（弓辰，网名佛振）

[RIME 中州韻輸入法引擎 官网](https://rime.im/)

[Awesome RIME](https://github.com/ayaka14732/awesome-rime) 整理了很多基于Rime 的输入方案和配置。

RIME 是一个自定义输入法工具，支持多平台。

|  平台 | 软件 |
|------|------|
| Windows | 小狼毫 |
| MacOS | 鼠须管；小企鹅fcitx5-macos|
| Linux | 有ibus-rime、fcitx-rime、fcitx5-rime等 |
| Android | 小企鹅fcitx5-android ; trime同文输入法 |
| iOS | 「仓」输入法 |

## 14. 顶功（戴石麟）

[顶功集萃 by 谭淞宸](https://ding.tansongchen.com/)

顶功理论，通过预设规则，能在输入时减少空格使用，自动上屏，缩短码长，提高输入效率。

支持顶功的输入法，通常规则比较多，需要较多的学习、实践和记忆。

因为分为大集合、小集合，导致在四码以内的编码空间少，难以支持大字集，要不就需增加码长，可是这样又会影响效率和输入节奏。

好处是：在几千字的字集内，熟练后，能大幅减少击键来达到较快的输入速度。

### 14.1 声笔系列 (声笔简系、声笔飞系、声笔双拼 等)

[声笔输入法FAQ](https://sbxlm.github.io/faq)

[声笔飞单 简要介绍](https://github.com/impishian/input_method/blob/main/%E5%85%B6%E4%BB%96/%E5%A3%B0%E7%AC%94%E9%A3%9E%E5%8D%95.md)

[声笔双拼 之 声笔自然 简要介绍](https://github.com/impishian/input_method/blob/main/%E5%85%B6%E4%BB%96/%E5%A3%B0%E7%AC%94%E5%8F%8C%E6%8B%BC%E4%B9%8B%E5%A3%B0%E7%AC%94%E8%87%AA%E7%84%B6.md)

声笔系列码，是一种独特的顶功输入法。声笔是顶功输入的首创者和引领者。

「声笔飞单」是二码起顶，主字方案。理论上有 567 个两键字（21 + 21 × 5 + 21 × 21），总频率接近 70%。「声笔飞码」是采用「声笔飞单」的声母和部首，单字三码顶、词组四码顶的主词输入方案。「声笔自然」和「声笔小鹤」是采用自然码或小鹤双拼，单字三码顶、词组四码顶的主词输入方案。

除声笔外，顶功输入法，还有基于早期声笔飞码发展起来的西风瘦码，以及后来出现的其它顶功方案，比如：一码起顶的左飞 1811，二码起顶的小兮码、灵形速影、左飞双拼、顶功雅歌，三码起顶的左飞三码、听雨三码，二四顶屏的顶功希码，星空学系列的星空两笔、星空键道及其变种，采用四二顶的 C42，采用五二顶的徐码五二顶等等。

令 P 表示 [a-z] 的26个字母键去掉 [aeiou] 后的21键集合，代表偏旁部首； S 表示 26 个字母键去掉 [aeiou] 后的21键集合，代表声母；B 表示[aeiou] 这几个键，代表5种笔画。那么，声笔飞码的编码（除去一级简码等之外）属于以下三个之一：

```
SP

SPB

SPBB
```

顶功的原理：这些编码的首码 S 与较长码的剩余部分中的 B 互斥。前一个编码输入完成后，不需输入空格，在后一个编码的S出现时，前一个编码的字词就可无歧义地上屏。

### 14.2 星空键道6

[星空键道6](https://pingshunhuangalex.gitbook.io/rime-xkjd)，自己的双拼布局，原理与声笔系列的 声笔双拼（声笔自然、声笔小鹤） 类似。

设集合 B 含有 {v,i,o,u,a} 五个元素，集合 S 含有其余 21 个字母作为元素。

键道6的编码特性 1：属于 B 的编码，不可能再接一个属于 S 的编码。

键道6的编码特性 2：4 个属于 S 的编码，不可能再接第 5 个属于 S 的编码。

这两个特性令键道6可以进行一系列顶功输入。

### 14.3 [yi码](https://yima.pages.dev/)：奕码、易码、逸码V20、晨逸

- [奕码](https://yima.pages.dev/grand-code/)：三码定长或者四二顶〔26×26=676个二码字不需空格、自动顶；三码需加空格（相当于四码）、手动顶〕，小码是字根的拼音，重码少。26 键，出简不出全。纯**单字**码表，覆盖 7900 个字。编码最短 2 码，最长 3 码。【拆字说明】首根+次根+末根(不足3，则补后一或两个音托，zy的音托取韵母)（类似：虎码 + 顶功。 为了用更短码长，打小字集的字，可是字根也不少，有一定的记忆量。）

- [易码](https://yima.pages.dev/easy-code/)：三码定长或者四二顶〔26×26=676个二码字不需空格、自动顶；三码需空格（相当于四码）、手动顶〕，总字根数 440+，归类完 268+，采用双编〔大码乱序+小码有序〕分布，小码二笔。覆盖 8105 个字。编码最短 2 码，最长 3 码。字词码表，单字42顶，分号作为第三码打词（abc;d）。【拆字说明】首根+次根+末根(不足3，则补末根前两笔的二笔码，仍不足，再补末根末笔笔画码FJEIV)。 (类似：五笔 + 二笔 + 顶功)

- [逸码V20](https://yima.pages.dev/graceful-code/)：二码顶，独一档的**单字**手感。字根总共 470 个，归类后 318 个字根。大集合 A 为 21 键。小集合 B 为 5 键：ERUIO（一丶ㄋ丨丿）。收字范围《通用规范汉字表》8105字。全码规则为「形形笔笔笔笔」。ymdz.dict.yaml: 共8224字，其中2码字541个、3码字2111个、4码字3198个、5码字1738个、6码字636个；6码有重的，有106个编码、251字。【拆字说明】单拆：字根+书写的笔顺；两拆：首根+次根的笔顺；多拆：首根+次根+余部的笔顺。（类似：五笔 + 顶功）。

- [晨逸](https://yima.pages.dev/chenyi/)：二笔风格的二码顶。2 码起顶的二笔顶功，最长 6 码；所有字词出简也出全。（类似：声 + 二笔 + 顶功）

- [测评工具](https://yb6b.github.io/)

- 奕码（四二顶） vs. 奕码（三码定长）

![image](https://github.com/user-attachments/assets/ae0d4170-d160-4d6e-9e41-04d2eb12ecd6)

（与易码码表不一样，奕码三定的码表里安排了26个一级简码。有一级简码，严格来说，就不能总是四二顶了。在双码字之后，若跟着的是单码字，则需手动把双码字先顶了。若跟的是双码/三码字，则刚才的双码会自动顶）

## 15. 并击

并行击键，高速输入。并击主要用于速录机的领域。电脑键盘上并击可参考：[速录宝、空明码、键盘并击](http://srkmm.ysepan.com/)

## 16. 其他

### 16.1 部分中文输入法 

[部分中文输入法列表＆简图](https://dieken.gitlab.io/posts/chinese-input-methods/)

- **双拼**：小鹤双拼... 等各种方案

- **音形**：各种二笔衍生的音形码（30键青松二笔、30键超强二笔、26键超强音形、26键超强快码、26键哲豆音形、26键自由二笔 ...）、小鹤音形等各种带辅助码的方案

- **形码**：各种魔改的五笔方案、魔改的三码郑码、受到郑码和五笔启发而设计的 徐码（245 字根）、宇浩（233 字根）...等各种方案

- **顶功**：声笔系列、星空键道 ... 等各种方案

- **台湾的**：大易、行列、自然（旧称国音，用许氏键盘） ... 等；

- **香港的**：九方、快码、纵横 ... 等。

### 16.2 近些年活跃的输入方案

八九十年代，曾经是“万码奔腾”的时代，各种输入方案层出不穷地提出来。

现在最多人用的是输入方式，是拼音云计算的智能整句输入。即使是五笔这样的形码，使用者也相对少了。

不过，至今仍有输入法小圈子，在做各种研究，以追求极致的个性化输入体验。

- [山人全息@谢振斌](https://siuze.github.io/ShanRenMaLTS/)

- [尔雅徐码@徐国银](http://xumax.cn/)〔[五二顶@局外人](https://github.com/Ace-Who/rime-xuma?tab=readme-ov-file)〕

- [宇浩@朱宇浩](https://yuhao.forfudan.com/)  | [宇浩网盘](http://zhuyuhao.ysepan.com/?xzpd=1)

- [真码@命](http://sixchou.ysepan.com/)

- [C42@谭淞宸](https://github.com/tansongchen/c42)〔[汉字自动拆分系统](https://chaifen.app/)〕

- [092](https://092wb.github.io/)

- [三码郑码@史岳](http://zzzm.ysepan.com/?xzpd=1)

- [小鹤音形@何海峰](https://flypy.com/)

- 蓝宝石@秋风

- [奕码@小泥巴](https://yb6b.github.io/yima/grand-code/)
  
- [逸码@小泥巴](https://yb6b.github.io/yima/graceful-code/)

- [易码@小泥巴](https://yb6b.github.io/yima/) 〔[测评工具](https://yb6b.github.io/#/)〕

- [奕码 & 逸码 & 易码 网盘](http://yima.ysepan.com/?xzpd=1)

- [吉蛋饼](https://lost-melody.github.io/wafel/)〔[仓输入法工具](https://lost-melody.github.io/hamster-tools/) 〕 

- [云码@为云](https://github.com/orbitoo/kumo)

- [天码@宋天](http://soongsky.com/sky/)

- [声笔系列@戴石麟](https://sbxlm.github.io/)

- [星空键道@吅吅大山](https://xkinput.github.io/)〔[星猫键道](https://github.com/hugh7007/xmjd6-rere)〕

- [灵形速影](https://ding.tansongchen.com/tutorial/collection/second/lxsy)

### 16.3 永硕 E 盘的一些输入法资源

- [爱汉字，用郑码](http://zmdisk.ysepan.com/) 

- [Gang的郑码网盘、龙字根](http://gapeng.ysepan.com/)

- [观海的郑码网盘](http://liuwenshu.ysepan.com/)

- [俗人的郑码网盘](http://wangzhulin.ysepan.com/)

- [地下五笔、现代五笔、地下郑码、超强郑码、五码郑码 等](http://uggx.ysepan.com/?xzpd=1)

- [自然新码、晚风、微风、随风、西风瘦码、丁丁码](http://leybyr.ysepan.com/)

- [哲豆音形](http://zzdzzd.ysepan.com/)

- [汉心码、易学码、带调双拼的龙码](http://yaoxiazai.ysepan.com/)

- [王林快码](http://jdkm.ysepan.com/)

- [超强快码、超强两笔、超强音形](http://fds8866.ysepan.com/)

- [字源](http://bxm.ysepan.com/?xzpd=1)

- [小鹭音形](https://nxysbtpi3z.feishu.cn/docx/doxcnFyBYZG5922YDDOEprfcS9b)  |  [鹭鹤音形的网盘](http://wdliming.ysepan.com/)

- [创码、朕码、声形码、晶数码、晶晶码](http://ime-space.ysepan.com/)

- 现代五笔 [1.官网?](http://www.xdwb.cn/) | [2.介绍](http://www.jpwb.cc/DzcrHlp.htm) 

- 米+五笔 [1.网盘](http://xukt.ysepan.com/) | [2.网页](http://www.jpwb.cc/MJWB.htm) | [3.github](https://github.com/SkatingCN/rime-mishi-wubi)

- [张码](http://zhangma.ysepan.com/?xzpd=1)

- [98五笔资源库](http://98wb.ysepan.com/?xzpd=1)

- [986五笔(五笔986版)资源中心](http://986wb.ysepan.com/?xzpd=1)

### 16.4 本人主要使用的输入法组合
  
- **音码：双拼 (自然码方案)**，打词打句

- **音形结合**：[**自然虎形**](https://github.com/impishian/rime-ice-ziranma-zhengma-huma/) - 虎码首末作为双拼辅码，打单字

  比鹤形辅码、自然辅码重码率更低。对于已记住虎码字根者，不需再记一套仅专用于音形码的字根和键位。

  边打边想，分词断句。该打词句时，打词句。该打字时，打字。
  
- **形码：虎码**，适合盲打和大字集的古籍等
  
  8105字集内：近乎单字唯一化，重码本不多，若有重，大都可用 ;' 选二三字。 重码>3的只有三组编码: kor 旭沓汩汨旮 / gwfr 彀觳榖縠 / fdvi 嬴羸赢蠃

  若追求更极致，想不重码打这少量的字，可参看[虎码官网给一些用户自定优化的建议](https://tiger-code.com/docs/customDefinition)，用 无理容错码 、回头码 、音补、顺取变为先取中间 等方式取码，当然这些都是可选的方式。

- 记忆量：双拼键位、虎码字根（规则几乎0记忆量）。

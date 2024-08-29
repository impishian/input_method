# 汉字输入法

## 汉字

按最新的国际标准 CJK 以及增补的 CJK-A 到 CJK-I，共约近 10 万汉字，涵盖东亚的汉字圈各地区的古今用字。

然而，约 10 万汉字中，除非从事古代汉语相关的工作，绝大部分的字，一般人都不会用到。《四库全书》也用不到其中很多字。

《新华字典》12版，超过13000字。

《现代汉语词典》7版，7万余条词 (涉及的字，则不明确)。

《汉语大字典》(第三版)，60370字。

《汉语大词典》22000以上的字，35万余条词。

《中华字海》85568字。

《中华大字典》57470字。

《辞海》(7版) 超过13万条词 (涉及的字，则不明确)。

《辞源》三版14210字，复词 92646个。

《汉字海》102434字。

《康熙字典》47043 字。

《國語辭典》11930字、152398词。

《異體字字典》106230字。


Unicode 15.1 CJK-I： 97681字。

然而，对于普通人，三四千汉字，已满足现代汉语日常交流的 99% 以上的使用。日本现在大约使用两千日文汉字。

----

[三地汉字标准](https://github.com/kitty-panics/cn-tables)

[所有 Unicode CJK 字符（近10万字）](https://github.com/kitty-panics/unicode-cjk)

[通用规范汉字表（8105字）](https://github.com/rime-aca/character_set/blob/master/%E9%80%9A%E7%94%A8%E8%A6%8F%E7%AF%84%E6%BC%A2%E5%AD%97%E8%A1%A8.txt)

----

## 拼音

[拼音pdf](https://github.com/impishian/input_method/blob/main/tex/pinyin.pdf) 里，根据《新华字典》第12版，整理列出共416种声韵组合。除了6种语气词的读音，其他 410 种，一般的拼音输入法都支持。而那6种，所对应的8个语气词是多音字，用其他的声韵组合也能打出。

通常，拼音输入法，用26键，无声调，来打字，重码率高。大陆学过拼音的人，基本不用学习就能上手打字。

## 注音

[注音pdf](https://github.com/impishian/input_method/blob/main/tex/pinyin_zhuyin.pdf) 里，整理列出了 407 种声介韵组合，基本与拼音的组合一致。

注音输入法，与拼音只用26键不同，通常需要用40键来打字，注音带声调，多打声调键，重码就少一些。

注音打字，击键比拼音少，比双拼多。不如双拼的打字节奏稳定。台湾学过注音的人，了解40键如何对应注音，就能上手打字。

大陆人，只要稍加学习下，也能掌握注音。《新华字典》里，每个字除了标上拼音，也都仍标着注音。

## 粤拼

[粤拼pdf](https://github.com/impishian/input_method/blob/main/tex/Jyutping.pdf) , 有 600 多种声韵组合。

## 自然码（双拼+形）（周志农）

[自然码官网](http://www.ziranma.com.cn/)

自然码是双拼的鼻祖之一。双拼，声韵各一键，打字节奏稳定，并可减少击键。2009年3月26日更新到7.27版本后，停止了更新。不少爱好者在主流输入法中定制实现自然码。

另外，自然码辅助码，可减少同音字的重码。有双辅方案、单辅方案，即：双码、单码的辅码。

## 郑码（郑易里、郑珑父女）

[中易官网郑码介绍](https://www.china-e.com.cn/li/main/zhengma/jj.htm)

纯形码，字根双编码，约 186 字根。理解笔画规律，先记 52 个主根，再记其余的 134 个副根，不用口诀背。

从一开始推出，就面向大字符集（比如，多达10万的CJK汉字），不像五笔那样，后来还需推98版、新世纪版等。

若以大陆字型为准，编码与五笔相比，更规范。

不满意者，通常是由于其简码和词组编码跟全码不同，简码并不是全码前几键，

参照其字根双编码的思路，近年出现不少字根很多的方案。

## 五笔（王永民）

[王码官网](http://www.wangma.net.cn/)

86版，使用最广（后有多个版本，坊间魔改的五笔也很多），约130字根。字根单编码，用口诀就能背下来。

86版，最初主要面向 GB2312 的 6763 个字。后来，坊间用于大字符集，可能重码会过多。

末笔交叉识别码，会有些人不适应。另外，有些字拆字别扭。当然，汉字几千年的演变，非常复杂，没有一种形码，拆字会绝对舒服，绝对规范的。

另有说法，86版使用234个字根，98版使用259个字根，新世纪版使用了226个字根。应该是形似根不归并，来统计而得的数量。

五笔是商业推广最成功的形码。

## 仓颉（朱邦復）

[朱邦復工作室](http://www.cbflabs.com/)

与大陆的字根组字的方式不同，仓颉把字看成一个图像，类似四角号码给字的各个角取码那样，来取码打字。

大陆的形码，通常最多四码，而仓颉最多时会用五码打一字。好处是重码少。仓颉不设简码。

有第三代、第五代仓颉等，差别不大。还有只取首尾仓颉码的 速成输入法（或称简易输入法）。

第五代手册：http://cbflabs.com/book/ocj5/ocj5/index.html

## 二笔输入法（陈劲松）

曾通过中国教育部评审的可以进入中小学教材。2013年专利期满。现有众多爱好者基于二笔实现的方案。

## 表形码（陈爱文）

早期也是不错的方案，商业纠纷和推广力度，导致未能普及，境遇远不比五笔等。

[表形码爱好者网盘](http://bxm.ysepan.com/?xzpd=1)

[关于表形码的一段往事](https://blog.sina.com.cn/s/blog_4a20485e01000b8b.html)

[表形码与我国的语言学](http://www.yywzw.com/pan/pan-03d-004.htm)

## 顶功（戴石麟）

自动上屏的“顶功”提出者。通过巧妙的预设规则，减少空格的使用，缩短码长。高效输入。但是需要学习和记忆的东西多。

## 并击

并行击键，高速输入，主要用于速录机的领域。

## 双拼

常见的双拼方案包括：(1)自然码、(2)微软、(3)智能ABC、(4)加加、(5)小鹤、(6)搜狗、(7)紫光。

不太常见的双拼方案包括：(8)国标（中华人民共和国国家标准）、(9)雅歌、(10)徐氏、(11)蓝天、(12)白云、(13)新华、(14)UCDOS。

爱好者双拼方案包括：(15)小浪、(16)大牛、(17)键道3、(18)键道6、(19)星空、(20)开源小鹳、(21)小月、(22)韵标、(23)C双拼、(24)飞猫。

其中自然码、小鹤双拼与雅歌双拼为音形输入法，也就是“前两码音码”+“后两码形码”，不过形码是辅助码，也就是可以只输入双拼音码。

BTW，注音输入法的双拼并不常见，一般会叫做“双码注音输入法”，其中具代表性的有晌烨双拼输入法与婕涵双拼音形输入法，后者为音形输入法，也就是“前两码音码”+“后两码形码”，不过与自然码跟小鹤双拼类似，形码是辅助码，也就是可以只输入音码。

## 虎码

[虎码@PeaceB](https://tiger-code.com/)〔[虎码测评网](http://assess.tiger-code.com/)〕

字根完全乱序，字根双编码（小码音托）。面向大字符集。字根多，打字体验就比较好。像搭积木一样，能轻易搭出各种字。比五笔更容易拆字、重码少、极少的无理码。

241 字根，比五笔、郑码都多，但其网站提供工具来记忆（练习超过3万分，则字根基本过关），也不难记住。不要像五笔那样背字根，可当成 241 个 Key-Value 对来记。

**虎码，是取码规则最简单的形码**

## 中州韵（弓辰，网名佛振）

[RIME 中州韻輸入法引擎](https://rime.im/)

自定义输入法利器。Windows, MacOS, Linux, Android, iOS 等都可用。

在Windows下称为小狼毫

在MacOS下称为鼠须管（也有小企鹅fcitx5-macos可用）

在Linux下有ibus-rime、fcitx-rime、fcitx5-rime等

在Android有小企鹅fcitx5-android 和 trime同文输入法

在iOS下有 「仓」输入法 等。

## 其他

[部分中文输入法列表＆简图](https://dieken.gitlab.io/posts/chinese-input-methods/)

小鹤双拼... 等各种**双拼**方案、

各种二笔衍生的音形码（30键青松二笔、30键超强二笔、26键超强音形、26键超强快码、26键哲豆音形、26键自由二笔 ...）、小鹤音形等各种带辅助码的**音形**方案、

各种魔改的五笔方案、魔改的三码郑码、受到郑码和五笔启发而设计的 徐码（245 字根）、宇浩（233 字根）...等各种 **形码** 方案、

声笔系列、星空键道 ... 等各种**顶功**方案、

... 等；

台湾的大易、行列、自然（旧称国音，用许氏键盘） ... 等；

香港的九方、快码、纵横 ... 等。

## 近些年比较活跃的一些输入法方案

[山人全息@谢振斌](https://siuze.github.io/ShanRenMaLTS/)

[尔雅徐码@徐国银](http://xumax.cn/)〔[五二顶@局外人](https://github.com/Ace-Who/rime-xuma?tab=readme-ov-file)〕

[宇浩@朱宇浩](https://yuhao.forfudan.com/)  | [宇浩网盘](http://zhuyuhao.ysepan.com/?xzpd=1)

[真码@命](http://sixchou.ysepan.com/)

[C42@谭淞宸](https://github.com/tansongchen/c42)〔[汉字自动拆分系统](https://chaifen.app/)〕

[092](https://092wb.github.io/)

[三码郑码@史岳](http://zzzm.ysepan.com/?xzpd=1)

[小鹤音形@何海峰](https://flypy.com/)

蓝宝石@秋风

[逸码@小泥巴](https://yb6b.github.io/yima/graceful-code/)

[易码@小泥巴](https://yb6b.github.io/yima/) 〔[测评工具](https://yb6b.github.io/#/)〕

[逸码&易码 网盘](http://yima.ysepan.com/?xzpd=1)

[吉蛋饼](https://lost-melody.github.io/wafel/)〔[仓输入法工具](https://lost-melody.github.io/hamster-tools/) 〕 

[云码@为云](https://github.com/orbitoo/kumo)

[天码@宋天](http://soongsky.com/sky/)

[声笔系列@戴石麟](https://sbxlm.github.io/)

[星空键道@吅吅大山](https://xkinput.github.io/)〔[星猫键道](https://github.com/hugh7007/xmjd6-rere)〕

[灵形速影](https://ding.tansongchen.com/tutorial/collection/second/lxsy)

----

[顶功集萃 by 谭淞宸](https://ding.tansongchen.com/)

[速录宝、空明码、键盘并击](http://srkmm.ysepan.com/)

## 永硕 E 盘的一些输入法资源

[爱汉字，用郑码](http://zmdisk.ysepan.com/)  | [Gang的郑码网盘、龙字根](http://gapeng.ysepan.com/)  |  [观海的郑码网盘](http://liuwenshu.ysepan.com/)  | [俗人的郑码网盘](http://wangzhulin.ysepan.com/)

[地下五笔、现代五笔、地下郑码、超强郑码、五码郑码 等](http://uggx.ysepan.com/?xzpd=1)

[自然新码、晚风、微风、随风、西风瘦码、丁丁码](http://leybyr.ysepan.com/)

[哲豆音形](http://zzdzzd.ysepan.com/)

[汉心码、易学码、带调双拼的龙码](http://yaoxiazai.ysepan.com/)

[王林快码](http://jdkm.ysepan.com/)

[超强快码、超强两笔、超强音形](http://fds8866.ysepan.com/)

[字源](http://bxm.ysepan.com/?xzpd=1)

[小鹭音形](https://nxysbtpi3z.feishu.cn/docx/doxcnFyBYZG5922YDDOEprfcS9b)  |  [鹭鹤音形的网盘](http://wdliming.ysepan.com/)

[创码、朕码、声形码、晶数码、晶晶码](http://ime-space.ysepan.com/)

[张码](http://zhangma.ysepan.com/?xzpd=1)

[98五笔资源库](http://98wb.ysepan.com/?xzpd=1)

[986五笔(五笔986版)资源中心](http://986wb.ysepan.com/?xzpd=1)

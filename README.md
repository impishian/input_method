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

[各地汉字标准](https://github.com/kitty-panics/cn-tables)

[所有 Unicode CJK 字符](https://github.com/kitty-panics/unicode-cjk)

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

## 自然码双拼（周志农）

[自然码官网](http://www.ziranma.com.cn/)

自然码是双拼的鼻祖。双拼，声韵各一键，打字节奏稳定，并可减少击键。

另外，自然码辅助码，可减少同音字的重码。单辅也够用了，想用双辅也行（双辅会占用编码空间，造成更多重码）。

## 郑码（郑易里、郑珑父女）

[中易官网郑码介绍](https://www.china-e.com.cn/li/main/zhengma/jj.htm)

纯形码，字根双编码，约 186 字根。理解笔画规律，先记 52 个主根，再记其余的 134 个副根，不用口诀背。

从一开始推出，就面向大字符集（比如，多达10万的CJK汉字），不像五笔那样，后来还需推98版、新世纪版等。

若以大陆字型为准，编码与五笔相比，更规范。打字、打词的取根取码规则不一致，简码不是全码前几键。

## 五笔（王永民）

[王码官网](http://www.wangma.net.cn/)

86版，使用最广（后有多个版本，坊间魔改的五笔也很多），约130字根。字根单编码，用口诀就能背下来。

86版，最初主要面向 GB2312 的 6763 个字。后来，坊间用于大字符集，可能重码会过多。

末笔交叉识别码，会有些人不适应。另外，有些字拆字别扭。当然，汉字几千年的演变，非常复杂，没有一种形码，拆字会绝对舒服，绝对规范的。

另有说法，86版使用234个字根，98版使用259个字根，新世纪版使用了226个字根。应该是形似根不归并，来统计而得的数量。

## 仓颉（朱邦復）

[朱邦復工作室](http://www.cbflabs.com/)

与大陆的字根组字的方式不同，仓颉把字看成一个图像，类似四角号码给字的各个角取码那样，来取码打字。

大陆的形码，通常最多四码，而仓颉最多时会用五码打一字。好处是重码少。仓颉不设简码。

有第三代、第五代仓颉等，差别不大。还有只取首尾仓颉码的 速成输入法（或称简易输入法）。

第五代手册：http://cbflabs.com/book/ocj5/ocj5/index.html

## 虎码

[虎码@PeaceB](https://tiger-code.com/)〔[虎码测评网](http://assess.tiger-code.com/)〕

字根完全乱序，字根双编码（小码音托）。面向大字符集。

241 字根，比五笔、郑码都多，但其网站提供工具来记忆（练习超过3万分，则字根基本过关），也不难记住。不要像五笔那样背字根，可当成 241 个 Key-Value 对来记。

**虎码，是取码规则最简单的形码**

## 中州韵（弓辰，网名佛振）

[RIME 中州韻輸入法引擎](https://rime.im/)

自定义输入法利器。Windows, MacOS, Linux, Android 等都可用。各平台下则称为小狼毫、鼠须管、同文等。

## 其他

小鹤双拼各种双拼、

小鹤音形等各种带辅助码的音形方案、

各种魔改的五笔方案、魔改的三笔郑码、

徐码（245 字根）、宇浩（233 字根）等各种受到郑码和五笔启发而设计的形码方案、

大易、行列、嘸蝦米（台湾，用户量较少）

...

等等。

----

[中文输入法](https://dieken.gitlab.io/posts/chinese-input-methods/)

[顶功集萃](https://ding.tansongchen.com/)

----

[山人全息@谢振斌](https://siuze.github.io/ShanRenMaLTS/)

[尔雅徐码@徐国银](http://xumax.cn/)〔[五二顶@局外人](https://github.com/Ace-Who/rime-xuma?tab=readme-ov-file)〕

[宇浩@朱宇浩](https://yuhao.forfudan.com/)

[真码@命](http://sixchou.ysepan.com/)

[C42@谭淞宸](https://github.com/tansongchen/c42)〔[汉字自动拆分系统](https://chaifen.app/)〕

[092](https://092wb.github.io/)

[三码郑码@史岳](http://zzzm.ysepan.com/?xzpd=1)

[小鹤音形@何海峰](https://flypy.com/)

蓝宝石@秋风

[逸码@小泥巴](https://yb6b.github.io/yima/graceful-code/)

[易码@小泥巴](https://yb6b.github.io/yima/) 〔[测评工具](https://yb6b.github.io/#/)〕

[吉蛋饼](https://lost-melody.github.io/wafel/)〔[仓输入法工具](https://lost-melody.github.io/hamster-tools/) 〕 

[云码@为云](https://github.com/orbitoo/kumo)

[天码@宋天](http://soongsky.com/sky/)

[声笔系列@戴石麟](https://sbxlm.github.io/)

[星空键道@吅吅大山](https://xkinput.github.io/)〔[星猫键道](https://github.com/hugh7007/xmjd6-rere)〕

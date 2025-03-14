### 1.鹤形辅码

#### 1.1 小鹤音形

[小鹤音形](https://flypy.cc/) = 小鹤双拼（两键）+ 鹤形辅助码（两键）。

声、韵的两键； 首形声母、末形声母的两键。

#### 1.2 小鹤双拼

自然码双拼的韵母键位的 D与L互换，Z->W->X->P->Y->K->C->N->B->Z 按此序换，就能得到小鹤双拼的键位。

逆序换，则可将小鹤转为自然码。

```
单字码表：小鹤双拼 -> 自然码双拼

(1) 将 fly.txt 里 $2 列的第二个字母替换，第一、第二字母组合不为
    aa 或 oo 或 ee 或 ai 或 ei 或 ao 或 ou 或 an 或 en 或
    er 或 ah 或 eg，才执行替换。

(2) 替换规则：
    若为d则换为l，若为l则换为d，若为z则换为b，若为b则换为n，
    若为n则换为c，若为c则换为k，若为k则换为y，若为y则换为p，
    若为p则换为x，若为x则换为w，若为w则换为z。

awk '{
    # 判断 $2 的长度是否足够
    if (length($2) >= 2) {
        first_char = substr($2, 1, 1);  # 获取第一个字符
        second_char = substr($2, 2, 1); # 获取第二个字符
        combination = first_char second_char; # 获取前两个字符组合
        
        # 判断组合是否不在指定的例外组合列表中
        if (combination != "aa" && combination != "oo" && combination != "ee" &&
            combination != "ai" && combination != "ei" && combination != "ao" &&
            combination != "ou" && combination != "an" && 
            combination != "en" && combination != "er" && 
            combination != "ah" && combination != "eg") {
            
            # 执行替换规则
            if (second_char == "d") second_char = "l";
            else if (second_char == "l") second_char = "d";
            else if (second_char == "z") second_char = "b";
            else if (second_char == "b") second_char = "n";
            else if (second_char == "n") second_char = "c";
            else if (second_char == "c") second_char = "k";
            else if (second_char == "k") second_char = "y";
            else if (second_char == "y") second_char = "p";
            else if (second_char == "p") second_char = "x";
            else if (second_char == "x") second_char = "w";
            else if (second_char == "w") second_char = "z";
            
            # 更新 $2
            $2 = first_char second_char substr($2, 3);
        }
    }
    
    print $0;  # 输出修改后的行
}' fly.txt
```

#### 1.3 鹤形辅码

除了在小鹤音形输入法里使用之外，其实也可作为独立的辅码方案，用于其他的拼音、双拼输入法。

比如，手心输入法，不管是什么双拼方案，都可以另挂接自定义的独立辅码表。[鹤形单辅码 for 手心](https://github.com/impishian/input_method/blob/main/%E9%B9%A4%E5%BD%A2%E8%BE%85%E7%A0%81/%E5%B8%B8%E7%94%A8%E5%8D%95%E5%AD%97_%E9%B9%A4%E5%BD%A2%E5%8D%95%E8%BE%85_%E6%89%8B%E5%BF%83%E8%BE%93%E5%85%A5%E6%B3%95.txt) 是一份单辅码码表，只配了首形声母，可用于手心输入法的自定义辅码中。

用 Rime，也可用 lua 代码，实现挂接独立的辅码表。可参见：[辅助码分离的插件](https://github.com/HowcanoeWang/rime-lua-aux-code)

鹤形辅码易学，字根设计简单且规律，规则比五笔等形码更为简明。

### 2.自然鹤形（自然码双拼 + 鹤形辅码）

#### 2.1 鹤形辅码 vs. 自然码辅码

二者相比，鹤形辅码字根更多一些，规则更明确一些(比如，明确取首末两根，不像自然码可随意取)，当然学习和记忆的东西可能略多一点点。

但是，好处是：打单字时，重码少。

不妨拿 8105 个规范汉字，来看看两种辅码编码的重码情况。

以 [rime-shuangpin-fuzhuma](https://github.com/gaboolic/rime-shuangpin-fuzhuma) 里的2024年08月初的

`cn_dicts_xh/8105.dict.yaml (小鹤双拼 + 鹤形双辅码)` 和

`cn_dicts_zrm/8105.dict.yaml (自然码双拼 + 自然码双辅码)` 

这两个文件来做个简单的分析。

从“啊”这行开始，到最后一行，共 8528 行（这是因为雾淞在 8105 个规范字基础上，增加了一些日常用到的字），二者的编码数分别如下：

```
$ awk '{print $2}' xh_8105.txt | awk '!a[$0]++' | wc -l
7881

$ awk '{print $2}' zrm_8105.txt | awk '!a[$0]++' | wc -l
7012
```

鹤形只有647个重码（占比 < 7.6%），自然码辅码有1516个重码(占比 > 17.7%)。

#### 2.2 自然码双拼 + 鹤形辅码

鹤形辅码有重码低的优势，对于那些早已熟悉多年自然码双拼键位布局的人，其实也可以使用鹤形辅码（当然字根会也些不同，需再熟悉）。

##### 2.2.1 自定义短语 功能

在上面 1.3 里，是在手心输入法里启用辅码功能，挂接鹤形单辅码。可是这种用法，会与词的编码造成重码，不是很好用。

无论是搜狗还是手心等输入法，都有“自定义短语”的功能，它的优先级是最高的。

可以把带辅码的单字定义在“自定义短语”中，让单字优先显示在1/2/3等位置（如果要打词，随着输入的键多了，词必然就会出现在1/2/3位置来替代字，不必担心）。

##### 2.2.2 对于文言文 （打单字使用辅码）

由于低重码，99%的机会在前3位置，大概率用 空格 或 ;' 可以把它从第2/3位置推上去。

难字可用 U 模式，组字输入。一时不记得辅码的字，还可“以词定字”，用 [] 来把词的首字、末字推上去。

##### 2.2.3 对现代文 (打词时不用辅码)

做好长句分析，和断句处理。尽量用词语输入。若词语实在重码多，则精简词库或临时改打单字。

#### 2.3 用自定义短语实现 自然鹤形 (自然码双拼 + 鹤形辅码) 单字

以上面提到的 xh 和 zrm 两个 8105.dict.yaml 为输入，分别提取后者的双拼、前者的辅码，再转换得到手心所用的格式。

[手心输入法个性短语-自然鹤形](https://github.com/impishian/input_method/blob/main/%E9%B9%A4%E5%BD%A2%E8%BE%85%E7%A0%81/%E6%89%8B%E5%BF%83%E8%BE%93%E5%85%A5%E6%B3%95%E4%B8%AA%E6%80%A7%E7%9F%AD%E8%AF%AD%E5%AF%BC%E5%87%BA_zrm_xh.txt)  

下载，导入到电脑版手心，或手机版本手心的自定义短语里，即可使用。

BTW, 自然码双拼 + 鹤形辅码，与 小鹤双拼 + 鹤形双辅码 一样，重码率不变，仍是不到 8%

#### 3. 手心输入法的一些小 Tips

##### 3.1 禁用联网

安装好一些自定义词库后，电脑上可以用防火墙禁用其主动联网，防止隐私上报（比如, MacOS 可以用开源的 Lulu）。Android手机上可以禁用手心联网权限。

##### 3.2 禁用调频

打单固定位置比较好。

##### 3.3 启用 “分号和单引号选二三字”

对少量重码的字，在2/3位固定好，多打就记住了位置。可以用 ;' 选字盲打。

##### 3.4 启用 “以词定字”

用中括号, 输入一个词, 左中括号上首字, 右中括号上末字

##### 3.5 输入习惯

用手心、搜狗，主要打词，尽量多个长词（即超过4键）再推上去。

偶尔需要打单字（99.9%的几率属于 8105 个规范字里），就用上虎码首末的辅码（正好4键）。为了输入节奏的稳定，自定义短语里无单辅。 

极少情况下，需要打 8105 个字以外的字，可以用 U 模式，或以词定字，或手写输入(手机上) ... 等等

##### 3.6 手心 vs. 搜狗

手心、搜狗基本类似，参考上面这些 Tips。

如果是 Windows版的搜狗，建议用 “搜狗智慧版” ，可以有禁用调频等选项，搜狗最新版本则没有这些有用的功能，默认自动调频，不可修改。

如果使用 MacOS，手心有“以词定字”功能，搜狗则没有“以词定字”功能。

手心也可以使用搜狗细胞词库。下载一些搜狗细胞词库。通过 [imewlconverter](https://github.com/studyzy/imewlconverter.git) 这个词库转换工具，把细胞词库转换为手心版本的词库，再导入手心。

在 MacOS 下通过 docker ，运行 imewlconverter，可将 ./dict/input/*.scel 的搜狗细胞词库，转换为手心词库，输出到 ./dict/output/ ，具体如下：

```
$ docker build -t imewlconverter:1.0 .

$ docker run --rm -it -v ./dict:/dict imewlconverter:1.0 -i:scel ./dict/input/*.scel -o:sxpy ./dict/output/*

$ docker run -it imewlconverter:1.0  -?
当前版本：V2.7.0.0
-i:输入的词库类型 词库路径1 词库路径2 词库路径3 -o:输出的词库类型 输出词库路径 -c:编码文件路径
输入和输出的词库类型如下：
sgpy	搜狗拼音txt
scel	搜狗细胞词库scel
sgpybin	搜狗拼音备份词库bin
qqpy	QQ拼音
qpyd	QQ分类词库qpyd
qcel	QQ分类词库qcel
qqwb	QQ五笔
qqpye	QQ拼音英文
bdpy	百度拼音
xiaoxiao	小小输入法
bdict	百度分类词库bdict
ggpy	谷歌拼音
pyjj	拼音加加
win10mspy	Win10微软拼音（自定义短语）
win10mswb	Win10微软五笔（自定义短语）
mspy	微软拼音
bing	必应输入法
fit	FIT输入法
rime	Rime中州韵
plist	Mac简体拼音
zgpy	华宇紫光拼音
uwl	紫光拼音词库uwl
libpy	libpinyin
pyim	Chinese-pyim
sxpy	手心输入法
xlpy	新浪拼音
jdzm	极点郑码
jd	极点五笔
xywb	小鸭五笔
yahoo	雅虎奇摩
ld2	灵格斯ld2
wb86	五笔86版
wb98	五笔98版
cjpt	仓颉平台
emoji	Emoji
bdsj	百度手机或Mac版百度拼音
bdsje	百度手机英文
bcd	百度手机词库bcd
qqsj	QQ手机
ifly	讯飞输入法
self	自定义
word	无拼音纯汉字

例如要将./test.scel和./a.scel的搜狗细胞词库转换为./gg.txt的谷歌拼音词库，命令为：
dotnet ImeWlConverterCmd.dll -i:scel ./test.scel ./a.scel -o:ggpy ./gg.txt
例如要将./test.scel和./a.scel的搜狗细胞词库转换为./temp文件夹下的谷歌拼音词库test.txt和a.txt，命令为：
dotnet ImeWlConverterCmd.dll -i:scel ./test.scel ./a.scel -o:ggpy ./temp/*
例如要将./test/*.scel的搜狗细胞词库转换为./temp文件夹下的谷歌拼音词库，命令为：
dotnet ImeWlConverterCmd.dll -i:scel ./test/*.scel -o:ggpy ./temp/*

对于导入词库不包含词频，而导出时需要指定词频，可以通过-r:命令指定词频的生成方式，支持的有：
-r:baidu  根据该词语在百度搜索的结果数量决定词频
-r:google  根据该词语在Google搜索的结果数量决定词频(需翻墙)
-r:数字  指定一个固定数字的词频

对于导出词库为Rime输入法的，可以通过-ct:pinyin/wubi/zhengma设置编码，也可通过-os:windows/macos/linux设置适用的操作系统

使用-ft:可以设置词条的过滤条件，如果不设置则不过滤任何词条。-ft:后面可以设置的过滤条件包括：
len:1-100 保留字数为1到100的词条
rank:2-9999 保留词频在2到9999的词条
rm:eng 移除包含英文字母的词条
rm:num 移除包含数字的词条
rm:space 移除包含空格的词条
rm:pun 移除包含标点符号的词条
以上过滤条件可以组合，同时起作用，用竖线分开即可：
-ft:"len:1-100|rank:2-9999|rm:eng|rm:num|rm:space|rm:pun"

自定义格式的参数如下:
-f:213,|byyn
213 这里是设置拼音、汉字和词频的顺序，213表示1汉字2拼音3词频，必须要有3个
, 这里是设置拼音之间的分隔符，用逗号分割
| 这里是设置汉字拼音词频之间的分隔符，用|分割
b 这里是设置拼音分隔符的位置，有lrbn四个选项，l表示左包含，r表示右包含，b表示两边都包含，n表示两边都不包含
yyn 这里是设置拼音汉字词频这3个是否显示，y表示显示，b表示不显示，这里yyn表示显示拼音和汉字，不显示词频
例如要将一个qpyd词库转换为自定义格式的文本词库，拼音之间逗号分割，拼音和词之间空格分割，不显示词频，同时使用自定义的编码文件code.txt命令如下：
dotnet ImeWlConverterCmd.dll -i:qpyd ./a.qpyd -o:self ./zy.txt "-f:213, nyyn" -c:./code.txt
其中-c:./code.txt指定的编码文件格式为：“汉字<Tab键>编码”每行一个。

最后，如果这款软件帮助到了您，您可以通过捐赠表示感谢，捐赠作者支付宝地址：studyzy@163.com 曾毅
输入 -? 可获取帮助
```

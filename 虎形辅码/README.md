#### 1. 几种双拼辅码

墨奇;鹤形;自然码;简单鹤;仓颉首末;虎码首末;五笔前2

8105常用字范围内，这些辅码，除了简单鹤、仓颉首末没试验，其他几种的重码率，从高到低，简单排序如下：

自然形(17%) > 五笔前2 >  莫奇 > 鹤形(8%) > 虎码首末 (6%)。

可见，**虎码首末作为双拼辅码，是最优的，“双拼虎形” 更接近 “单字唯一化” 的目标。特别推荐给 那些既会双拼，又会虎码字根的人使用。**

#### 2. 自然双拼 + 虎码首末辅码

对于那些日常主要打双拼（主要是几千个字的范围，以及这些字组成的词），但偶尔有需要打形码的人（比如，虎码，能打国际标准里的 近 10万 个汉字）。

由于已经熟记形码字根，不想与 自然辅码、鹤形辅码 字根拆法、字根键位搞混。 不妨用 虎码首末根来做辅码。

[手心输入法个性化短语-自然虎形](https://github.com/impishian/input_method/blob/main/%E8%99%8E%E5%BD%A2%E8%BE%85%E7%A0%81/%E6%89%8B%E5%BF%83%E8%BE%93%E5%85%A5%E6%B3%95%E4%B8%AA%E6%80%A7%E7%9F%AD%E8%AF%AD%E5%AF%BC%E5%87%BA_zrm_hu.txt)

下载，导入到电脑版手心，或手机版本手心的自定义短语里，即可使用。

如果用搜狗，则用以下文件：

[搜狗输入法个性化短语-自然虎形](https://github.com/impishian/input_method/blob/main/%E8%99%8E%E5%BD%A2%E8%BE%85%E7%A0%81/%E6%90%9C%E7%8B%97%E8%BE%93%E5%85%A5%E6%B3%95%E4%B8%AA%E6%80%A7%E7%9F%AD%E8%AF%AD%E5%AF%BC%E5%87%BA_zrm_hu.ini)

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

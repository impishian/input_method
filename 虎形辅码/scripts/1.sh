############################################################
# 数据说明：
#
# 来自 https://github.com/gaboolic/rime-shuangpin-fuzhuma
#
# xh_8105.txt, zrm_8105.txt : 都是 2024-08-10 的 8105.dict.yaml。鹤形辅码、自然辅码提取自这两个文件。
#
# new_8105.txt : 是 2024-08-16 修改格式后的 8105.dict.yaml，将各种辅码全配置在一行了（墨奇;鹤形;自然码;简单鹤;仓颉首末;虎码首末;五笔前2）。墨奇、虎码首末、五笔前2 等辅码，提取自这两个文件。
#

##############################
# 字
awk '{print $1}' zrm_8105.txt > 0.txt
# wc -l 0.txt   #  8528 个字
#
##############################
# 自然码双拼
awk '{print $2}' zrm_8105.txt| awk -F '\[' '{print $1}' > 1.txt


############################################################

################
# 鹤形辅码
awk '{print $2}' xh_8105.txt | sed -r 's/\[//g' | awk '{count[$0]++; print $0 "," count[$0] "="}' > 3_xh.txt
#
# 码数: 7881
awk '{print $2}' xh_8105.txt | awk '!a[$0]++' | wc -l
#
# 自然鹤形
paste -d " "  3_xh.txt 0.txt | sed 's/ //g'  > 4_xh.txt

################
# 自然辅码
awk '{print $2}' zrm_8105.txt | sed -r 's/\[//g' | awk '{count[$0]++; print $0 "," count[$0] "="}' > 3_zrm.txt
#
# 码数: 7012
awk '{print $2}' zrm_8105.txt | awk '!a[$0]++' | wc -l
#
# 自然双拼+自然形
paste -d " "  3_zrm.txt 0.txt | sed 's/ //g'  > 4_zrm.txt

################
# 虎码首末辅码
awk '{print $2}' new_8105.txt| awk -F ';'  '{print $7}' > 2_huma.txt
paste -d " " 1.txt 2_huma.txt | sed -r 's/ //g' | awk '{count[$0]++; print $0 "," count[$0] "="}' > 3_huma.txt
#
# 码数: 7996
paste -d " " 1.txt 2_huma.txt | awk '!a[$0]++' | wc -l
#
# 自然虎码
paste -d " "  3_huma.txt 0.txt | sed 's/ //g'  > 4_huma.txt

################
# 五笔前2辅码
awk '{print $2}' new_8105.txt| awk -F ';'  '{print $8}' > 2_wubi.txt
paste -d " " 1.txt 2_wubi.txt | sed -r 's/ //g' | awk '{count[$0]++; print $0 "," count[$0] "="}' > 3_wubi.txt
#
# 码数: 7526
# 注：因 new_8105.txt 里各种辅码，每个字可能定义了多种双辅，或单双辅码，而不是此前的唯一双辅，wubi 辅码里有36个字定义了多种辅码。此处为不严禁统计wubi 码数
paste -d " " 1.txt 2_wubi.txt | awk '!a[$0]++' | wc -l
#
# grep , 2_wubi.txt | wc -l    #  36
#
# 自然五笔
# paste -d " "  3_wubi.txt 0.txt | sed 's/ //g'  > 4_wubi.txt


#
#
#################################################################################
#
# 8105 字，除了简单鹤、仓颉两种辅码没尝试统计。其他几种，辅码重码率, 从高到低排序：
# 自然形(17%) > 五笔前2 >  莫奇 > 鹤形(8%) > 虎码首末 (6%)。
#
#

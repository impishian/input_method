【注意】因古代用字读音有争议，待校对。

----

1. A6 的 PDF 文件，用以下 pdfjam 命令行，每连续相邻4页打印为 A4 小册子。

----

2. every_4.c

#include "stdio.h"

int main()
{
  for (int i=1; i<92; i+=4)
  {
    // 输出 4,1-3,8,5-7 等，最后的一个逗号不要。
    printf("%d,%d-%d,", i+3, i, i+2); 
  }

  printf("\n\n");
  return 0;
}

$ gcc every_4.c -o every_4

$ ./every_4

$ pdfjam --nup 2x1 --landscape myfile.pdf '4,1-3,8,5-7'

----

3. 在 macOS 预览 pdf，选中所有偶数页，全都翻转180度。保存 pdf。

----

4. 最后得到的 pdf，可双面打印在连续的 A4 纸上，最后对折每一张纸，订起来或粘起来，即可得到一本书。

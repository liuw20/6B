#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

 void csv2Bin(FILE *fp,FILE *fpb);
struct data
{
char data[20];


}sheet[3][4];
typedef struct  data df;
void csv_bin(df a);
int main()
{
        FILE *fp = NULL;
    	char *line,*record;
    	char buffer[1024];
  	if ((fp = fopen("sheet.csv", "r")) != NULL)//判断文件能否正常打开
	{
		int i=0;
		while ((line=fgets(buffer,sizeof(buffer),fp))!=NULL)//当没有读取到文件末尾时循环继续
		{

			record = strtok(line, ",");
			strcpy(sheet[i][0].data, record);//将数据存入结构体数组中
			int j=1;
			while (record != NULL)//读取每一行的数据
			{
				if (j==4)
				{
					break;
				}
				record = strtok(NULL, ",");
				strcpy(sheet[i][j].data,record);
				j++;
				
			}
        printf("\n");
		i++;
		}
		fclose(fp);//如果文件为空，则关闭文件
		fp = NULL;
	}

    // FILE *fpb;
	// fpb=fopen("sheet","wb");
	// fwrite(sheet[0][0].data,20,12,fpb);//将csv文件转化为二进制文件
	// fclose(fpb);
	// fpb=fopen("sheet","rb");
	// df sheet_binary[3][4];
	
	// fread(sheet_binary[0][0].data,20,12,fpb);
	// for (int i = 0; i < 3; i++)
	// {
	// 	for (int j = 0; j < 4; j++)
	// 	{
	// 		printf("%s ",sheet_binary[i][j].data);//将二进制文件打印出来
	// 	}
	// }
   FILE *sheet_part[3];//创建三个小文件用于储存
   sheet_part[0]=fopen("sheet_part0.csv","w");
   sheet_part[1]=fopen("sheet_part1.csv","w");
   sheet_part[2]=fopen("sheet_part2.csv","w");
   FILE *sheet_part_bin[3];//创建三个二进制文件
   sheet_part_bin[0]=fopen("sheet_part0.bin","wb");
   sheet_part_bin[1]=fopen("sheet_part1.bin","wb");
   sheet_part_bin[2]=fopen("sheet_part2.bin","wb");
   for (int i = 0; i < 3; i++)
   {
	   fwrite(sheet[i][0].data,20,4,sheet_part[i]);//将每行内容写入到小文件当中
		 fclose(sheet_part[i]);
   }

for (int i = 0; i < 3; i++)
 {
		pid_t fpid;
		fpid=fork();//创建子进程
		if(fpid<0)
		printf("error in fork!");//创建进程失败报错
		else if (fpid==0)//对子进程进行操作
		{
			switch (i)
			{
				case 0:
					sheet_part[i]=fopen("sheet_part0.csv","r");
					csv2Bin(sheet_part[i],sheet_part_bin[i]);
					exit(0);//完成转化后退出
					break;
				case 1:
					sheet_part[i]=fopen("sheet_part1.csv","r");
					csv2Bin(sheet_part[i],sheet_part_bin[i]);
					exit(0);//完成转化后退出
					break;
				case 2:
					sheet_part[i]=fopen("sheet_part2.csv","r");
					csv2Bin(sheet_part[i],sheet_part_bin[i]);
					exit(0);//完成转化后退出
					break;
				default:
					break;
			}
}
}
FILE *sheet_bin;//父进程拼接文件
sheet_bin=fopen("sheet_whole","ab+");
df sheet_bin_data[3][4];
 sheet_part_bin[0]=fopen("sheet_part0.bin","rb");//打开写入好的二进制小文件
 sheet_part_bin[1]=fopen("sheet_part1.bin","rb");
 sheet_part_bin[2]=fopen("sheet_part2.bin","rb");

for (int i = 0; i < 3; i++)//将二进制小文件进行合并
{
		fread(sheet_bin_data[i][0].data,20,4,sheet_part_bin[i]);
		fclose(sheet_part_bin[i]);
		fwrite(sheet_bin_data[i][0].data,20,4,sheet_bin);
}
fclose(sheet_bin);
//对父进程文件进行打印
sheet_bin=fopen("sheet_whole","rb");
df sheet_father[3][4];
fread(sheet_father[0][0].data,20,12,sheet_bin);
 for (int i = 0; i < 3; i++)
	{
		for (int j = 0; j < 4; j++)
		{
			printf("%s ",sheet_father[i][j].data);//将二进制文件打印出来
		}
	}
}
  void csv2Bin(FILE *fp,FILE *fpb)//将文本文件转化为二进制文件
{
	df sheet_tem[1][4];//使用结构体数组存储临时数据
	fread(sheet_tem[0][0].data,20,4,fp);
	fclose(fp);
	fwrite(sheet_tem[0][0].data,20,4,fpb);
	fclose(fpb);
}




        

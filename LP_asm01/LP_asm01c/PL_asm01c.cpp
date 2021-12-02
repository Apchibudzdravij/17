#include <iostream>
#pragma comment (lib, "D:\\ExtendedData\\Laboratory\\ßÏ\\17\\LP_asm01\\Debug\\LP_asm01a.lib")
extern "C"
{
	int _stdcall getmax(int*, int);
	int _stdcall getmin(int*, int);
}
void main()
{
	int aray[10] = { 6,8,14,98,25,4,36,5,123,8 };
	int max = getmax(aray, 10);
	int min = getmin(aray, 10);
	std::cout << "getmax-getmin=" << max - min;
}
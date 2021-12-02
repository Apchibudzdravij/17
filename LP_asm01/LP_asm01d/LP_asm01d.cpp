#include "pch.h"
#include "framework.h"
extern "C"
{
	int getmin(int* arr, int len)
	{
		int min = 32000;
		for (int i = 0; i < len; ++i)
			if (arr[i] < min)
				min = arr[i];
		return min;
	}

	int getmax(int* arr, int len)
	{
		int max = -32000;
		for (int i = 0; i < len; ++i)
			if (arr[i] > max)
				max = arr[i];
		return max;
	}
}
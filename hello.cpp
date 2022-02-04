#include<stdio.h>

int main()
{
  printf("Hello World!\n");
  return 0;
}

int getMaxSequence(int *arr, int size)
{
  int max = 0;
  int current = 0;
  for (int i = 0; i < size; i++)
  {
    if (arr[i] == 1)
    {
      current++;
    }
    else
    {
      current = 0;
    }
    if (current > max)
    {
      max = current;
    }
  }
  return max;
}

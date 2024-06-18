// bubble sort

void bubbleSort(numbers)
{
for (int i=0;i<numbers.length-1;i++)
{
  for (int j=0 ; j<numbers.length-i-1;j++)
  { if(numbers[j]>numbers[j+1])
      {
      int temp=numbers[j];
      numbers[j]=numbers[j+1];
      numbers[j+1]=temp;
      }


  }
}
}
void main()
{
var nums=[2,5,1,6,4,7,9];
bubbleSort(nums);
print("Sorted number :");
print(nums);
}
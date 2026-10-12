
int[] BubbleSort(int[] array){ // {18,20, 15, 32, 58, 4} --> {4, 15, 18, 20, 32, 58}
  for(int j = 0; j < array.length-1; j ++)
  {
    for(int i = 0; i < array.length-1; i ++)
    {
      int temp = 0;
      if(array[i] >= array[i + 1])
      {
        temp = array[i + 1];
        array[i + 1] = array[i]; 
        array[i] = temp;         
      } 
    } 
  }
  return array; 
  
}

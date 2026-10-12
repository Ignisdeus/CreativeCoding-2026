
void setup(){
  int[] score = {250,410,658,325,412,523,587,236,547};
  println(score[8]); 
  score = BubbleSort(score);
  
  for( int i = 0; i < score.length; i ++)
  {
    println(score[i]); 
  
  }
} 

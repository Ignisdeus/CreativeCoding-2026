
int myInt = 5; // this is a whole number 1..n 
// = mean we are setting the value 
// == means we are compairing the value 

float myFloat = 3.14f; // this is a number with a . in it

String myString = "Hello World"; // this is for words :) 

boolean myBool = true; 

PVector  pos = new PVector(3f,3f); 
void draw()
{
  // rect(x, y, size, size);
  myInt = myInt + 1; 
  rect(myInt,5, 10,10); 
  
  println(myInt + myFloat); 
  
}

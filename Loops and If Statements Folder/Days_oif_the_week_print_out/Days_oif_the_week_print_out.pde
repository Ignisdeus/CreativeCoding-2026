// how to count an array
                  // 0        1           2            3         4           5          6
String[] days = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saterday", "Sunday"}; 
// assigning the array elements a value 
String[] daysTwo = new String[7]; // for an empty array 

void setup()// this code only runs once 
{
  size(500,500); 
  for(int i = 0; i < days.length; i ++)
  {
    println(days[i]); 
  }
}

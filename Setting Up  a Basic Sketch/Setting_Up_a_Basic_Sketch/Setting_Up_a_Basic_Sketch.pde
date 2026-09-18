


void setup()// is called at the start of the app 
{
  
  size(500, 700);
  rectMode(CENTER);
  
} 
int sizeToReduce = 0; 
int colourShift = 0; 
void draw()// is called every frame 
{
  fill(255 - colourShift, colourShift, 255); 
  rect(250,350,500 - sizeToReduce,700 - (sizeToReduce * 0.4f));
  if(sizeToReduce < 1750)
  {
    sizeToReduce = sizeToReduce + 10; 
  }
  colourShift = colourShift + 30; 
} 

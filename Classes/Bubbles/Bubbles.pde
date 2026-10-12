float pressue = 9.85;
int bubbleCount = 1000; 
Bubble[] bubbles = new Bubble[bubbleCount];

void setup()
{
  //size(500,750); // setting up a picture frame vibe :) 
  fullScreen(); 
  for(int i = 0 ; i < bubbleCount; i ++){
    bubbles[i] = new Bubble((int)random(0, width), (int)random(0, height), (int)random(2, 50));
    
  } 
} 

void draw()
{
  background(0,125,125); 

  for( int i =0; i < bubbles.length; i ++){
    Bubble b = bubbles[i]; 
    b.Update(); 
    b.Render(); 
    
  } 
  
}

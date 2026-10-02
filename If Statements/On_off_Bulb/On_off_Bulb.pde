
// if statements. Check is something is true

/*
if( the door is open)
 {
 spawnBadGuys
 }
 
 boolean doorIsOpen = false;
 
 if(doorIsOpen == true)
 {
 SpawnBadGuys();
 }
 
 */


void setup()// only happens at the start of the project
{

  size(500, 500); // size of the canvis
}
int bulbCenterX = 250, bulbSize = 100, bulbCenterY = 250; 
void draw()// draw something evey single frame
{
  background(75); 

  // going to draw the light bulb
  fill(125); // dark tone gray -> (R,G,B) --> (125,125,125);
  strokeWeight(1); // set stroke weight to 1 pixel
  stroke(0); 
  line(250, bulbCenterY-75, 250, 0);// draws line from the bulb to the top of the screen
  noStroke(); // removes the line form the shapes
  // draws the housing for the blub
  ellipse(bulbCenterX, bulbCenterY - 75, 50, 50);
  rect(bulbCenterX - 25, bulbCenterY - 75, 50, 50);
  //draws the bulb glass part
  if (mouseX > bulbCenterX - bulbSize * 0.5
      && mouseX < bulbCenterX + bulbSize * 0.5
      && mouseY > bulbCenterY - bulbSize * 0.5
      && mouseY < bulbCenterY + bulbSize * 0.5)
  {
    fill(250, 250, 0); 
    bulbCenterY --; 
  }else{
    fill(125);
    if(bulbCenterY < 250)
    {
      bulbCenterY++; 
      
    }
  } 


  ellipse(bulbCenterX, bulbCenterY, bulbSize, bulbSize);

  // (x, y, size, size) size = D
   /*
  //testing display
  noFill();
  strokeWeight(3);
  stroke(0, 255, 0);
  rect(bulbCenterX - bulbSize * 0.5, bulbCenterY - bulbSize * 0.5, bulbSize, bulbSize);
  stroke(0);
  */
}

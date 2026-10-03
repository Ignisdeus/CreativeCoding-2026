
import processing.sound.*;

AudioIn in; 
Amplitude amp; 



ArrayList<Dust> dust = new ArrayList<Dust>();
int amountOfDust = 100; 
int windSpeed = -10; 
float gravity = 9.80; 
float maxLightDistance; 
void setup(){
  maxLightDistance = (PVector.dist(new PVector(0, height), new PVector(width,0))); 
//fullScreen();
  size(675, 675); 
  screenMaxX = width;
  screenMaxY = height;
  for(int i =0; i < amountOfDust; i ++){
    dust.add(new Dust()); 
  } 
  ghost = loadImage("Ghost.png");
  amp = new Amplitude(this); 
  in = new AudioIn(this); 
  amp.input(in); 
  in.start(); 

   

}

 
void draw(){
  Background();
  Ghost();
  for(int i =0; i < amountOfDust; i ++){
    Dust d = dust.get(i); 
    d.Update(); 
    d.Render(); 
  } 

  Frame();
  text(frameRate, 50,50); 
  
}


void Background(){
 background(25);  
}

int frameSize = 25;
int screenMaxX = width, screenMaxY = height; 
PImage ghost; 
 
void Ghost(){


  //println(level);
  //println(tintEffect); 
  //println(amp.analyze()); 
  float clampedVol = constrain(amp.analyze(), 0.0, 1);
  tint(255 * 1);  
  image(ghost,0,0, width, height); 
  
}
void Frame(){
 fill(73,32,0); 
 noStroke(); 
 rect(0,0, screenMaxX, frameSize); 
 rect(screenMaxX - frameSize,0,frameSize, screenMaxY);
 rect(0, screenMaxY - frameSize, screenMaxX, frameSize);
 rect(0,0,frameSize, screenMaxY);
  
  
}

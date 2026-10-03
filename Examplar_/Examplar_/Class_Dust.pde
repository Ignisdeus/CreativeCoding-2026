class Dust{
 int size; 
 PVector pos; 
 color darkAreaCol = 50, lightAreaCol = 175;
 float mass; 
 Dust(){
   size = (int)random(1, 5); 
   pos = new PVector(random(0, width), random(0, height));
   mass = size * 0.01f; 
 } 
  
  void Update(){
    pos.y = pos.y + (gravity * mass) ;
    pos.x = lerp(pos.x, pos.x + (windSpeed * mass) * random(-0.1,1), 0.5f);
    if(pos.y > height){
     pos.y = 0 - size;  
    }
    if(pos.x < 0 - size){
     pos.x = width + size;  
    }
    if(pos.x > width + size){
     pos.x = 0 - size;  
    }
  } 
  
  float distance = 0;
  PVector lightPoint = new PVector(width,0);
  void Render(){
     
    distance = PVector.dist(pos, lightPoint);
    float lightPercent = (distance/maxLightDistance); 
    //println(distance); 
    fill(lightAreaCol - (lightAreaCol * lightPercent)); 
   
 
    ellipse(pos.x, pos.y, size, size); 
  } 
}

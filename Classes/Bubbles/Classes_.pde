class Bubble{
  
  PVector pos; 
  int size; 
  float speed =0; 
  
  Bubble()
  {
    
  }
  
  Bubble(int x, int y, int size){
    pos = new PVector(x,y);
    this.size = size;
    speed = (pressue * size) * 0.005f; 
  } 
  
  void Update()
  {
    pos.y -= speed;
    if(pos.y + (size/2) < 0){
      pos.y = height + (size /2); 
      pos.x = random(0, width); 
      size = (int)random(2, 40); 
      speed = (pressue * size) * 0.005f;
    } 
  } 
  
  
  void Render()
  {
    noFill();
    stroke(255); 
    ellipse(pos.x, pos.y, size, size); 
    noStroke(); 
    fill(255);
    ellipse(pos.x- (size * 0.18f), pos.y - (size * 0.18f), size * 0.18f, size * 0.18f); 
     ellipse(pos.x- (size * 0.09f), pos.y - (size * 0.09f), size * 0.05f, size * 0.05f); 
    
  } 
  
  
  
  
  
  
  
} 

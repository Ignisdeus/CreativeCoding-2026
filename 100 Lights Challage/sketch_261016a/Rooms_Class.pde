class Room
{

  PVector pos;
  int size;
  boolean lightOn = false;
  int number = 0; 

  Room(int x, int y, int size, int num)
  {
    pos = new PVector(x, y);
    this.size = size;
    number = num; 
  }

  void Render()
  {
    stroke(255);
    if (lightOn) {
      fill(255, 255, 0);
    } else {
      fill(0);
    }

    rect(pos.x, pos.y, size, size);
    stroke(255,0,0); 
    fill(255,0,0); 
    text(number, pos.x + 10, pos.y + 15); 
  }

  void LightSwitch() {
    lightOn = !lightOn;
  }
}

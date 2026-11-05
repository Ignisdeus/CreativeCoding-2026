Room[] rooms = new Room[100];
void setup()
{

  size(500, 500);
  BuildRooms();
  frameRate(10); 
}
int person = 1; 
void draw()
{

  for (int i =0; i < 100; i ++) {
    Room r = rooms[i];
    if( (i + 1) % person == 0)
    {
     r.LightSwitch();  
    }
    r.Render();
  }
  person ++; 
}


void BuildRooms()
{

  for (int y = 0; y  < 10; y++) {
    for (int x = 0; x < 10; x++) {
      int posX = x * 50;
      int posY = y * 50;
      rooms[x + (y * 10)] = new Room(posX, posY, 50, (x + 1) + (y * 10));
    }
  }
}

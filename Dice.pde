int xx = 20;
int yy = 15;

Die[][] dice = new Die[xx][yy];
//Die gotchaBoy;

void setup()
{
  size(2060, 1560);
  noLoop();
  //gotchaBoy = new Die(30,30,90,90);
  for (int x = 0; x < xx; x++) {
    for (int y = 0; y < yy; y++) {
      dice[x][y] = new Die(100 * x + 30, 100 * y + 30, 90, 90);
    }
  }
}

void draw()
{
  for (int x = 0; x < xx; x++) {
    for (int y = 0; y < yy; y++) {
      dice[x][y].show();
    }
  }
}

void mousePressed()
{
  for (int x = 0; x < xx; x++) {
    for (int y = 0; y < yy; y++) {
      dice[x][y].roll();
    }
  }
  redraw();
}

class Die //models one single dice cube
{
  int locX, locY, sizeX, sizeY, dieValue;

  Die(int x, int y, int widdth, int heiight) //constructor
  {
    locX = x; 
    locY = y;
    sizeX = widdth; 
    sizeY = heiight;
    this.roll();
  }
  void roll()
  {
    dieValue = (int) (random(1, 6));
  }
  void show()
  {
    fill(0, 0, 0);
    rect(locX, locY, sizeX, sizeY);
    fill(255, 255, 255);
    textSize(64);
    text(dieValue, locX + 45, locY + 60);
  }
}

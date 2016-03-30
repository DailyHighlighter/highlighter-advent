class Coin
{ 
  int scoreTester = 0;
  float x;
  float y;
  //float dx = 0;
  //float dy = 0;
  int dx = 0;
  int dy = 0;

  void LOC(int xPos, int yPos) {//where it is located
    x = xPos;
    y = yPos;
  }
  //public Coin() {
  //  }
  public Coin() {
  }
  void move() {
    x = x + dx;
    y = y + dy;
  }
  void goTo (float xPos, float yPos) 
  {
    x = xPos;
    y = yPos;
  }
  void Shape(int xSize, int ySize) {
    fill(255);
    ellipse(x, y, xSize, ySize);
  }
  void Collision() {//TRYING SO HARD TO MAKE IT WORK
    if (xLoc >= x+pWid && xLoc >= x-pWid) {
      if (yLoc >= y-pWid && yLoc >= y+pWid) {
        scoreTester++;
      }
    }
  }
}
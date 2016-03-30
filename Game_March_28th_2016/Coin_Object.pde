class Coin
{ 
  float x;
  float y;
  //float dx = 0;
  //float dy = 0;
  int dx = 0;
  int dy = 0;

  void CoinLOC(int xPos, int yPos) {//where it is located
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
  void CoinShape(int xSize, int ySize) {
    fill(255);
    ellipse(x, y, xSize, ySize);
  }
  void Cointouched(boolean DidIHitIt){
    if (DidIHitIt == true){
Score++;
    
    }
    
    
  }


}
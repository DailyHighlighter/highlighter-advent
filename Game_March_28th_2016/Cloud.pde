class Cloud
{
  float x=50;
  float y=150;
  public Cloud() { }
  void cloudLOC(float x1, float y1) {
    //my ugly-as-sin cloud thing
    x1 = x;
    y1 = y;
    
    fill(255);
    noStroke();
    ellipse(x1, y1, 100, 20);
    ellipse(x1+10, y1, 20, 60);
    ellipse(x1-15, y1, 20, 30);
    ellipse(x1-10, y1, 20, 40);
    ellipse(x1+25, y1-5, 20, 30);
    ellipse(x1-30, y1+5, 20, 15);
    stroke(0);
  }
  void cloudMovement()
  {
    x=x+1;
    if (x-100 > width || x<-50) {
      x=-40;
    }
  }
}
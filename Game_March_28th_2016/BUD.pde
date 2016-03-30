class BUD {// My Lil' Bud
  int XDistWall;
  int YDistWall;
  float xhb = 700;
  float yhb = 300;
  //float yLoc = 400;
  //float xLoc = 20;
  float yWall = 550;
  //int pWid;
  //int pHei;
  float fullSize;

  //void BudColor(int R, int G, int B){
  //fill(R,G,B);}

  void BudShape(int x, int y)
  {
    noStroke();
    
    rect(xLoc,yLoc-pWid/2,x/2,y);
    rect(xLoc, yLoc, x, y);
    pWid = x;
    pHei = y;
    
  





}
  void move() {//Movement section
    //if the user is holding the SHIFT key, the character moves more quickly
    if (keyPressed == true) {
      if (key == 'w' ) {
        yLoc-=Slow;
        text("Slow", scoreX, scoreY+20 );
      } 
      if (key == 'a') {
        xLoc-=Slow; 
        text("Slow", scoreX, scoreY+20 );
      }
      if (key == 'd') {
        xLoc+=Slow;
        text("Slow", scoreX, scoreY+20 );
      } 
      if (key == 's') {
        yLoc+=Slow;
        text("Slow", scoreX, scoreY+20 );
      }
      if (key == 'W' ) {
        yLoc-=Fast;
        text("Fast", scoreX, scoreY+20 );
      } 
      if (key == 'A') {
        xLoc-=Fast;
        text("Fast", scoreX, scoreY+20 );
      }
      if (key == 'D') {
        xLoc+=Fast;
        text("Fast", scoreX, scoreY+20 );
      } 
      if (key == 'S') {
        yLoc+=Fast;
        text("Fast", scoreX, scoreY+20 );
      }
    }
  }
  /*
      the following section is for diagonal travel
   */
  //SLOW
  //up-left/right
  //RIGHT
  void moveDiag() {
    //up right slow
    if (key == 'w' && key == 'd' ) {
      yLoc-=Slow;
      xLoc+=Slow;
    }
    //up LEFT slow
    if (key == 'w' && key == 'a') {
      yLoc-=Slow;
      xLoc-=Slow;
    }
    //down-Left/Right
    //RIGHT
    if (key == 's' && key == 'd' ) {
      yLoc+=Slow;
      xLoc+=Slow;
    }//LEFT
    if (key == 's' && key == 'a') {
      yLoc+=Slow;
      xLoc-=Slow;
    }

    //UP-FAST
    //UP-RIGHT
    if (key == 'W' && key == 'D' ) {
      yLoc-=Fast;
      xLoc+=Fast;
    }
    //LEFT
    if (key == 'w' && key == 'a') {
      yLoc-=Fast;
      xLoc-=Fast;
    }
    //down-Left/Right
    //RIGHT
    if (key == 'S' && key == 'D' ) {
      yLoc+=Fast;
      xLoc+=Fast;
    }//LEFT
    if (key == 'S' && key == 'A') {
      yLoc+=Fast;
      xLoc-=Fast;
    }
  }

  //KEEP THIS CODE INTACT AND UNCHANGED// 
  //OF ALL THE CODE I HAVE, I STILL DONT KNOW HOW OR WHY IT WORKS,
  //I JUST KNOW THAT IT DO.
  void wallControl() {

    if (yLoc < 0 || yLoc > 550-pHei) {
      yLoc = 550-pHei;
    }
    if (yLoc < 100) {
      yLoc = 100+(1/2)*pHei;
    }
    if (xLoc > width || xLoc <0 ) {
      xLoc=0;
    }
  }
}
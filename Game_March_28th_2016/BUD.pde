class BUD {// My Lil' Bud
  int XDistWall;
  int YDistWall;
  float xhb = 700;
  float yhb = 300;
  //float yLoc = 400;
  //float xLoc = 20;
  float yWall = 550;
  int pWid;
  int pHei;
  
  //void BudColor(int R, int G, int B){
  //fill(R,G,B);}
  
  void BudShape(int x, int y)
  {
    noStroke();
    
    rect(xLoc, yLoc, x, y);
    pWid = x;
    pHei = y;
  }
  void move() {//Movement section
    //if the user is holding the SHIFT key, the character moves more quickly
    if (keyPressed == true) {
      if (key == 'w' ) {
        yLoc-=Slow;
      } 
      if (key == 'a') {
        xLoc-=Slow;
      }
      if (key == 'd') {
        xLoc+=Slow;
      } 
      if (key == 's') {
        yLoc+=Slow;
      }
      if (key == 'W' ) {
        yLoc-=Fast;
      } 
      if (key == 'A') {
        xLoc-=Fast;
      }
      if (key == 'D') {
        xLoc+=Fast;
      } 
      if (key == 'S') {
        yLoc+=Fast;
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
  if (xLoc > width || xLoc < 0) {
    xLoc=0;
    Score++;  
  }
}
}
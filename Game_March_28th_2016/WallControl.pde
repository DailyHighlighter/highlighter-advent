//KEEP THIS CODE INTACT AND UNCHANGED// 
//OF ALL THE CODE I HAVE, I STILL DONT KNOW HOW OR WHY IT WORKS,
//I JUST KNOW THAT IT DO.
class CodeWeKeep {

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
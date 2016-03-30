/*
00292846 Ben Gordon Martin 
 kinda got help from (http://www.openprocessing.org/sketch/104885) though I was unable to figure it out.
 {new info here} 
 I expanded the screen size to allow for other possible objects
 */
Cloud c;
Coin item;
BUD p;
scoreboard s;
float Slow = 5; //speed of the player
float Fast = Slow*2;//sprint speed 

int scoreX =50;
int scoreY=120;
int pWid;
  int pHei;
int Score =1; //initial Score Value
float yLoc = 400;//x-axis player StartPoint 
float xLoc = 20;//y-axis player Start Point
boolean DidIHitIt = false; //coin Collison (WIP)


//boolean sprint = 0;
void setup() {//The Initialization Stuff Goes Here
  size(1280, 750);
  c = new Cloud(); //New Cloud instance
  //c2 = new Cloud();
  p = new BUD();//Player Instance
  item = new Coin(); //Score incrementing item instance
  s = new scoreboard(); //the score of the player in the game
  background(127);
  textSize(20);
  fill(0);
  text("hey",width/2,height/2);
  


}
void draw()//stuff goes here
{
  item.Collision();
  background(0, 127, 127);
  drawGround();
  fill(255);
  s.scoreCard(50, 120);
  p.BudShape(30, 30);//changes the size of the 
  //frameRate(50);
  // p.moveDiag();//(WIP secondary Movement)
  p.move();
  //p.BudColor(255,1,127);
  p.wallControl();
  c.cloudLOC(0, 0);
  c.cloudMovement();
  item.move();
  item.LOC(600, 300);
  item.Shape(30, 30);
  item.Collision();
}
void drawGround() {
  fill(0, 0, 0);
  rect(0, 550, width, height);
  rect(0, 0, width, 100);
}
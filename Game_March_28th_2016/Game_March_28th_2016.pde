/*
00292846 Ben Gordon Martin 
 kinda got help from (http://www.openprocessing.org/sketch/104885) though I was unable to figure it out.
 {new info here} 
 I expanded the screen size to allow for other possible objects
 I added separated files for class control #AntiMarxistProgramming
 Added a new Variable system for controlling player speed.
 Created a test item to show what mode the player is moving in. i.e. Fast or Slow  
 */
Cloud c;
Coin item;
BUD player;
scoreboard score;
float Slow = 5; //speed of the player
float Fast = Slow*2;//sprin;t speed 



int titleVal = 0;

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
  player = new BUD();//Player Instance
  item = new Coin(); //Score incrementing item instance
  score = new scoreboard(); //the score of the player in the game
  //background(127);
  //textSize(20);
  //fill(0);
  //text("hey", width/2, height/2);
  
  //delay(500);
  
}
void draw()//stuff goes here
{
  if(titleVal==0){
    SplashScreen1();
    delay(1000);
    titleVal++;
  }
  
  
  
  
  if(titleVal==1){
  //Normal Stuff
  background(0, 127, 127);
  drawGround();
  fill(255);
  score.scoreBoard(50, 120);
  fill(255);
  
  //Player Code
  player.BudShape(30, 30);//changes the size of the player object 
  player.move();
  player.wallControl();
  
  //background moving things
  
  c.cloudLOC(0, 0);
  c.cloudMovement();
  c.cloudAppear(127);
  
  //Item Section
  
  item.Collision();
  item.move();
  item.LOC(600, 300);
  item.Shape(30, 30);
  item.Collision();
}
}
void drawGround() {
  fill(0, 0, 0);
  rect(0, 550, width, height);
  rect(0, 0, width, 100);
}


void SplashScreen1() {
  line(48.0, 45.0, 48.0, 114.0);
  line(81.0, 51.0, 80.0, 117.0);
  line(47.0, 82.0, 85.0, 81.0);
  line(103.0, 52.0, 102.0, 132.0);
  line(102.0, 131.0, 143.0, 98.0);
  line(99.0, 87.0, 129.0, 71.0);
  line(98.0, 60.0, 138.0, 50.0);
  line(173.0, 59.0, 195.0, 82.0);
  line(195.0, 82.0, 228.0, 57.0);
  line(195.0, 83.0, 195.0, 148.0);
  line(247.0, 55.0, 247.0, 105.0);
  line(243.0, 158.0, 243.0, 158.0);
}
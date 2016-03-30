class scoreboard
{
  //this will be the scorecard
  void scoreCard(int x, int y) {
    x = scoreX;
    y = scoreY;
    textSize(20);
    text("Level " + Score, x, y);
  }
}
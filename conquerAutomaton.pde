 
Board b;
int count = 0;
void setup() {
 size(1080, 1080);
 background(0);
 colorMode(RGB, 255);
 b = new Board(1080, 1080, true);
 strokeWeight(0);
 //b.drawBoard();
 frameRate(60);
 
}

void draw() {
  
  
  // Remove this if you enjoy a black screen
  b.drawBoard();

 // Remove this if you DON'T want to draw. Useful to see the test pattern without having to recalculate every cell each frame
 if (frameCount == 1) {
   println("done");
   noLoop();
 }
}

void mousePressed() {
  int tileSize[] = {width / b.getSize()[0], height / b.getSize()[1]};
  if (mouseButton == RIGHT) {
    if (keyPressed) {
      String timeString = year() + "-" + month() + "-" + day() + "-" + hour() + "-" + minute() + "-" + second() + "-" + millis() + ".png";
      save("/render/" + timeString);
      b.exportScalingMap();
    } else {
      b.addTile(mouseX/tileSize[0], mouseY/tileSize[1], 0);
    }
  } else if (mouseButton == LEFT) {
    if (keyPressed) {
      b.addTile(mouseX/tileSize[0], mouseY/tileSize[1], 2);
    } else {
      b.addTile(mouseX/tileSize[0], mouseY/tileSize[1], 1);
    }
  }
}

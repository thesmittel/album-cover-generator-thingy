 
Board b;
int count = 0;
void setup() {
 size(1000, 1000);
 background(0);
 colorMode(RGB, 255);
 b = new Board(100, 100);
 strokeWeight(0);
 b.drawBoard();
 frameRate(60);
 
}

void draw() {
 b.drawBoard(); 
}

void mousePressed() {
  int tileSize[] = {width / b.getSize()[0], height / b.getSize()[1]};
  if (mouseButton == RIGHT) {
    if (keyPressed) {
      save(count + ".png");
      count++;
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

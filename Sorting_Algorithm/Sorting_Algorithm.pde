int[] rectHeightList = {25,50,75,100,125,150,175,200};
boolean sorted = true;
float randomRectX = random(0, random(0, width));
randomRectHeightIndicator = (int);
float randomRectHeightIndicator = random(1, 10);
int randomRectHeight = rectHeightList[randomRectHeightIndicator];
void setup() {
  size(700, 700);
}

void draw() {
  background(129, 36, 36);
  sortedOrNotSorted();
  sortRect();
}

void mousePressed() {
  if (sorted == true) {
    sorted = false;
  }
}

void initialDraw() {
  for (int rectX = 0; rectX < width; rectX+=25) {
    fill(14, 14, 175);
    rect(rectX, height, 15, rectHeightList[rectX]);
  }
}

void randomizeDraw() {
  for(int i = 0; i < 25; i++){
  fill(14, 14, 175);
  rect(randomRectX, height, 15, randomRectHeight);
  }
}

void sortedOrNotSorted() {
  if (sorted == true) {
    initialDraw();
  } else {
    randomizeDraw();
  }
}

void sortRect() {
  int opacity = 255;
  textSize(25);
  fill(14, 14, 175, opacity);
  text("Click to randomize,", 30, 20);
  text("Press s to sort.", 30, 40);
  opacity-=10;
  if (keyPressed) {
    if (key == 's') {
      sorted = true;
    }
  }
}

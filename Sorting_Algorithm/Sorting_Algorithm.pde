int[] rectHeightList = {50, 25, 175, 125, 200, 75, 150, 100};
boolean sorted = false;
void setup() {
  size(700, 700);
}

void draw() {
  background(129, 36, 36);
  //sortedOrNotSorted();
  sortRect();
  initialDraw();
}

void mousePressed() {
  if (sorted == false) {
    sorted = true;
  }
}

void initialDraw() {
  fill(255);
  for (int rectShow = 0; rectShow <= rectHeightList.length - 1; rectShow+=1 ) {
    text(rectHeightList[rectShow], 10 + rectShow*30, 25);
  }
}

void sortRect() {
  for (int i = 0; i <= rectHeightList.length; i++) {
    for (int j = 0; j <= rectHeightList.length; j++) {
      if (i <= j) {
        int lowTemp = i;
        rectHeightList[i] = rectHeightList[j];
        rectHeightList[j] = lowTemp;
        text(rectHeightList[i], 10 + i*30, 50);
      }
    }
  }
}

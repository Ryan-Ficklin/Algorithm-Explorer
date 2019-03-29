int[] rectHeightList = {50, 25, 175, 125, 200, 75, 150, 100};
int[] newRHL = {50, 25, 175, 125, 200, 75, 150, 100};
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
  for (int i = 0; i < newRHL.length; i++) {
    for (int j = 1; j < newRHL.length -1; j++) {
      if (newRHL[i] <= newRHL[j]) {
        int lowTemp = i;
        newRHL[i] = newRHL[j];
        newRHL[j] = lowTemp;
        text(newRHL[i], 10 + i*30, j*20 + 50);
      }
    }
  }
}

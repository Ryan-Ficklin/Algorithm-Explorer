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

void sortedOrNotSorted() {
}

void sortRect() {
  int lowestValue = rectHeightList[0];
  for (int rectSorter = 0; rectSorter <= rectHeightList.length - 1; rectSorter+=1 ) {
   for (int rectSort = 1; rectSort <= rectSorter; rectSort+=1) {
      if (lowestValue >= rectHeightList[rectSorter]) {
        lowestValue = rectHeightList[rectSorter];
        text(lowestValue, 30*rectSorter + 10, 50);
      }
    }
  }
}

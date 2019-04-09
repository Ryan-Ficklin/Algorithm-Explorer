int[] rectHL = {50, 100, 175, 125, 200, 75, 150, 25};
int[] displayOGRect = {50, 100, 175, 125, 200, 75, 150, 25};
boolean sorted = false;
void setup() {
  size(700, 700);
}

void draw() {
  background(129, 36, 36);
  sortRect();
  initialDraw();
  rects();
}

void mousePressed() {
  if (sorted == false) {
    sorted = true;
  } else {
    sorted = false;
  }
}

void initialDraw() {
  fill(255);
  for (int rectShow = 0; rectShow <= rectHL.length - 1; rectShow+=1 ) {
    text(displayOGRect[rectShow], 10 + rectShow*30, 25);
    text(rectHL[rectShow], 10 + rectShow*30, 50);
  }
}

void sortRect() {
  for (int i = 0; i < rectHL.length; i++) {
    for (int j = 0; j < rectHL.length; j++) {
      if (rectHL[i] < rectHL[j]) {
        int lowTemp = rectHL[i];
        rectHL[i] = rectHL[j];
        rectHL[j] = lowTemp;
      }
    }
  }
}


void rects() {
  fill(12,50,200);
  if (sorted == true) {
    for (int i = 0; i < rectHL.length; i++) {
      rect(rectHL[i]*2, height-25-rectHL[i], 25, rectHL[i]);
    }
  }
  if (sorted == false) {
    for (int i = 0; i < rectHL.length; i++) {
      rect(displayOGRect[i]*2, height-25-displayOGRect[i], 25, displayOGRect[i]);
    }
  }
}

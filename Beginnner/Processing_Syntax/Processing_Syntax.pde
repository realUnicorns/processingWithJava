int value = 0;
int moved = 0;
int released = 0;
int wheel = 0;
void setup() {
  size(640, 360);
  background(100, 100, 100);
}

void draw() {
  if (mousePressed && mouseButton == LEFT) {
    //background(100, 100, 100);
    //rectMode(CENTER);
    //rect(mouseX, mouseY , height-200, width-400);
    stroke(0, value, moved);
    strokeWeight(5);
    strokeJoin(ROUND);   //MITER and BEVEL are also possible
    strokeCap(ROUND);    //SQUARE and PROJECT are also possible
    line(pmouseX, pmouseY, mouseX, mouseY);
  } else if (mousePressed && mouseButton == RIGHT) {
    //background(100, 100, 100);
    //rectMode(CENTER);
    //rect(mouseX, mouseY , height-200, width-400);
    stroke(value, moved, 0);
    strokeWeight(5);
    strokeJoin(ROUND);   //MITER and BEVEL are also possible
    strokeCap(ROUND);    //SQUARE and PROJECT are also possible
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
  if (keyPressed) {
    if (key == 'r' || key == 'R') {
      fill(255, 0, 0);
      rect(400, 300, 50, 50);
    } else if (key == 'b' || key == 'B') {
      fill(0, 0, 255);
      rect(400, 300, 50, 50);
    } else if (key == 'g' || key == 'G') {
      fill(0, 255, 0);
      rect(400, 300, 50, 50);
    } else {
      fill(255);
      rect(400, 300, 50, 50);
    }
  }

  stroke(wheel);
  fill(moved);
  rectMode(CENTER);
  rect(300, 300, 50, 50);
  stroke(wheel);
  fill(released);
  rectMode(CORNER);
  rect(300, 300, 50, 50);
}

void mouseClicked() {
  background(moved);
}

void mouseDragged() {
  value = value + 5;
  if (value>255) {
    value = 0;
  }
}

void mouseMoved() {
  moved = moved + 5;
  if (moved>255) {
    moved = 0;
  }
}

void mouseReleased() {
  if (released == 0) {
    released = 255;
  } else {
    released = 0;
  }
}

void mouseWheel(MouseEvent event) {
  wheel = event.getCount();
}





//We can also use keyPressed() as a function and simillarly keyReleased() and keyTyped
//We can also use key = CODED it is used to for special keys like UP DOWN LEFT RIGHT ALT CTRL SHIFT and all the good staff
//WE can also create a mousePressed() function 
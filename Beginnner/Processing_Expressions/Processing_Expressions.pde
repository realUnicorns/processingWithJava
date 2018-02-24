float circleX = 0;
float circleY = 0;
float n = 5;
float m = 5;
void setup() {
  size(640, 320);
}

void draw() {
  float c1 = 50;
  float c2 = 50;
  float c3 = 50;
  float c4 = 50;
  background(50);
  if ((mouseX>0)&&(mouseX<width/2)&&(mouseY>0)&&(mouseY<height/2)) {
    c1 = 100;
  } else if ((mouseX>0)&&(mouseX<width/2)&&(mouseY>height/2)&&(mouseY<height)) {
    c2 = 100;
  } else if ((mouseX>width/2)&&(mouseX<width)&&(mouseY>0)&&(mouseY<height/2)) {
    c3 = 100;
  } else if ((mouseX>width/2)&&(mouseX<width)&&(mouseY>height/2)&&(mouseY<height)) {
    c4 = 100;
  }

  fill(c1);
  rect(0, 0, width/2, height/2);
  fill(c2);
  rect(0, height/2, width/2, height/2);
  fill(c3);
  rect(width/2, 0, width/2, height/2);
  fill(c4);
  rect(width/2, height/2, width/2, height/2);
  line(0, height/2, width, height/2);
  line(width/2, 0, width/2, height);
  fill(255);
  ellipse(circleX, circleY, 50, 50);
  circleX = circleX + n;
  circleY = circleY + m;

  if (circleX>width) {
    n = -5;
  } else if (circleX<0) {
    n = 5;
  }

  if (circleY>height) {
    m = -7;
  } else if (circleY<0) {
    m = 7;
  }
}


// || or
// && and
// if(!(I dont use to know that))
//shortened going = !going;
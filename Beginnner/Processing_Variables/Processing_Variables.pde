void setup() {
  size(640, 360);
  background(50);
}

void draw() {
  float red = random(255);
  float green = random(255);
  float blue = random(255);
  float circleX = random(width);
  float circleY = random(height);
  float circleW = random(20,50);
  float circleH = random(20,50);
  fill(red,green,blue);
  ellipse(circleX, circleY, circleW, circleH);
  println(red);
}


//binary()
//boolean()
//byte()
//char()
//float()
//int()
//hex()
//unbinary()
//str90
//unhex()
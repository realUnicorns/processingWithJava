
void setup() {
  size(640, 360);
}

void draw() {
  background(255);

  PVector mouse = new PVector(mouseX, mouseY);
  PVector center = new PVector(width/2, height/2);
  mouse.sub(center);
  mouse.add(center);
  mouse.mult(2);
  mouse.div(2);
  //mouse.normalize(); ||
  //mouse.mult(500);   ||
  //This both nomalize and mult function can be written with the help of one single function
  //setMag(50);
  fill(255, 0, 0);
  if (mouse.x>width-30 && mouse.x<width && mouse.y<height-(height-30) && mouse.y > 0 ) {
    fill(200,0,0);
  }
  rect(width-30, 0, width, 30);
  line(width-30, 0, width, 30);
  line(width, 0, width-30, 30);
  if (mouse.x>width-30 && mouse.x<width && mouse.y<height-(height-30) && mouse.y > 0 ) {
    if (mousePressed && mouseButton ==LEFT) {
      exit();
    }
  }
  translate(center.x, center.y);
  ellipse(0, 0, 5, 5);
  line(0, 0, mouse.x, mouse.y);
}
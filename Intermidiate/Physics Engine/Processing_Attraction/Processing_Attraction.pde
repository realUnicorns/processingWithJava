ball b;
void setup() {
  size(640, 360);
  b = new ball();
}

void draw() {
  background(100);
  b.draw_ball();
  b.move();
  b.SIS();
}
ball b;
void setup() {
  size(640, 360);
  b = new ball();
}

void draw() {
  background(100);
  PVector gravity = new PVector(0, 0.2);
  b.apply_force(gravity);

  if (mousePressed) {
    PVector wind = new PVector(0.2, 0);
    b.apply_force(wind);
  }

  b.draw_ball();
  b.move();
  b.SIS();
}
ball b;
void setup() {
  size(640, 360);
  b = new ball();
}

void draw() {
  background(100);
  PVector gravity = new PVector(0, 0.2);
  b.apply_force(gravity);
  if (mousePressed && mouseButton == LEFT) {
    PVector wind = new PVector(0.2, 0);
    b.apply_force(wind);
  }
  if (mousePressed && mouseButton == RIGHT) {
    PVector friction = b.velocity.get();
    friction.normalize();
    float c = -0.03;
    friction.mult(c);
    b.apply_force(friction);
  }
  b.draw_ball();
  b.move();
  b.SIS();
}
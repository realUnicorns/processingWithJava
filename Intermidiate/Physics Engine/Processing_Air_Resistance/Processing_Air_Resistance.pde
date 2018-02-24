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
    PVector drag = b.velocity.get();
    drag.normalize();
    float c = -0.001;
    float speed = b.velocity.magSq();
    drag.mult(c*speed*speed);
    b.apply_force(drag);
  }
  b.draw_ball();
  b.move();
  b.SIS();
}
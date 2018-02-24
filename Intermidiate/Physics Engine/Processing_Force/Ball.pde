class ball {
  PVector location;
  PVector acceleration;
  PVector velocity;

  ball() {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }

  void draw_ball() {
    stroke(125);
    strokeWeight(2);
    fill(217);
    ellipse(location.x, location.y, 50, 50);
  }

  void move() {  
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }

  void apply_force(PVector gravity) {
    acceleration.add(gravity);
  }

  void SIS() {

    if (location.x > width) {
      location.x = width;
      velocity.x *= -1;
    } else if (location.x < 0) {
      velocity.x *= -1;
      location.x = 0;
    }

    if (location.y > height) {
      velocity.y *= -1;
      location.y = height;
    }
  }
}
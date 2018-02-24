class ball {
  PVector location = new PVector(width/2, height/2);
  PVector velocity = new PVector(0, 0);
  PVector acceleration = new PVector(0, 0);
  void draw_ball() {
    stroke(125);
    strokeWeight(2);
    fill(217);
    ellipseMode(CENTER);
    ellipse(location.x, location.y, 50, 50);
  }
  void move() {
    PVector mouse = new PVector(mouseX, mouseY);
    mouse.sub(location);
    mouse.setMag(0.5);
    acceleration = mouse;  
    location.add(velocity);
    velocity.add(acceleration);
    velocity.limit(5);
  }
  void SIS() {
    if (location.x>width) {
      location.x=0;
    }
    if (location.x<0) {
      location.x=width;
    }
    if (location.y>height) {
      location.y=0;
    }
    if (location.y<0) {
      location.y=height;
    }
  }


  void attrction() {
  }
}
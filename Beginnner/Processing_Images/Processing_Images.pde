PImage cosplay;
void setup() {
  size(504,720);
  cosplay = loadImage("image.jpg");
}

void draw() {
  background(0);
  image(cosplay, 0, 0);
}
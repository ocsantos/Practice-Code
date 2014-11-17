float x;
float y;
float velX;
float velY;
float grav;
float accelX;
float accelY;
int sz=40;


void setup() {
  size(800,650);
  x=width/2;
  y=60;
  velX=0;
  grav=1;
  accelX=0;
  accelY=0;
}

void draw() {
  background(0);
  ellipse(x, y, sz, sz);
  velX+=accelX;
  velY +=grav;
  x+=velX;
  y+=velY;
  if (y+sz/2>height) {
    y=height-sz/2;
    velY*=-1;
  }
}

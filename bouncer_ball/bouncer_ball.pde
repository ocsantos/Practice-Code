Bouncer[] ball=new Bouncer[50];

void setup() {
  size(800, 650);
  for (int i = 0; i < ball.length; i++) {
    ball[i]=new Bouncer();
  }
}

void draw() {
  background(106, 26, 26);
  for (int i=0; i <ball.length; i++) {
    ball[i].display();
    ball[i].move();
    ball[i].bounce();
  }
}

class Bouncer {
  PVector loc, vel, acc;
  float sz;

  Bouncer() {
    sz=random(10,50);
    loc=new PVector(random(sz,width-sz),random(height/2));
    vel=new PVector(0, 0);
    acc=new PVector(0, .5);
  }
  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
  void bounce() {
    if (loc.y > height - sz/2) {
      loc.y = height - sz/2;
      vel.y = -abs(vel.y);
    }
  }
}


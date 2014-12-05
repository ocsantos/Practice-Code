Bouncer[] ball=new Bouncer[50];

void setup() {
  size(800, 650);
  colorMode(HSB, 360, 100, 100, 100);
  for (int i = 0; i < ball.length; i++) {
    ball[i]=new Bouncer(random(1, 50));
  }
}

void draw() {
  background(106, 26, 26);
  for (int i=0; i <ball.length; i++) {
    ball[i].display();
    ball[i].move();
    ball[i].bounce();
    for (int j = 0; j < ball.length; j++) {
      if (i!=j) {
        ball[i].collideWith(ball[j]);
      }
    }
  }
}
class Bouncer {
  PVector loc, vel, acc;
  float sz;
  float sat, bright, alpha, hue;

  Bouncer(float tsize) {
    sz=tsize;
    loc=new PVector(random(sz, width-sz), random(height/2));
    vel=new PVector(-1, 1);
    acc=new PVector(0, 0);
    sat = 100;
    bright = 100;
    alpha = 70;
  }
  void display() {
    fill(hue, sat, bright, alpha);
    ellipse(loc.x, loc.y, sz, sz);
  }
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
  void bounce() {
    if (loc.y-sz/2<0){
     vel.y=abs(vel.y);
    } 
    if (loc.y > height - sz/2) {
      loc.y = height - sz/2;
      vel.y = -abs(vel.y);
    }
    if (loc.x+sz/2 >width || loc.x-sz/2 < 0) {
      vel.x*=-1;
    }
  }
  void collideWith(Bouncer otherBall) {
    if (loc.dist(otherBall.loc)< sz/2 + otherBall.sz/2) {
      vel=PVector.sub(loc, otherBall.loc);
      vel.normalize();
    }
  }
}


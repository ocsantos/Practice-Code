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

  

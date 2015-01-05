//PVector loc, vel;
//float sz=50;
Ball b;
Ball c;
void setup() {
  size(800, 600);
  b=new Ball();
  c=new Ball();
  //  loc= new PVector(width/2, height/2);
  //  vel=PVector.random2D();
}

void draw() {
  background(0);
  b.display();
  b.bounce();
  b.move();
  c.display();
  c.bounce();
  c.move();
}
class Ball {
  //Properties of our Ball class
  float sz;
  PVector loc, vel;

  Ball() {
    sz=50;
    loc=new PVector(width/2, height/2);
    vel= PVector.random2D();
  }

  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }
  void move() {
    loc.add(vel);
  }

  void bounce() {
    if (loc.x+sz/2>width || loc.x-sz/2< 0) {
      vel.x*=-1;
    }
    if (loc.y+sz/2>height || loc.y-sz/2< 0) {
      vel.y*=-1;
    }
  }
}


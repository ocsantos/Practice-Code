Bouncer ball;
void setup() {
  size(800, 650);
  ball=new Bouncer();
}

void draw() {
  background(0);
  ball.display();
  ball.move();
  ball.bounce();

}

class Bouncer {
  PVector loc, vel, acc;
  float sz;

  Bouncer() {
    sz=50;
    loc=new PVector(width/2, 100);
    vel=new PVector(0,0);
    acc=new PVector(0,.1);
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


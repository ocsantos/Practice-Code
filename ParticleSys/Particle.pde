class Particle {
  //Declare variables!!!
  PVector loc, vel, acc;
  float sz;

  Particle() {
    //initialize variables!!!
    loc = new PVector(xposcloud+125, 75);
    vel = new PVector(random(-4,4), 6);
    acc = new PVector(0,.1);
    sz = 10;
  }
  
//Create function display!!!
  void display() {
    fill(10,15,67);
    ellipse(loc.x, loc.y, sz, sz);
  }

//Create function move!!!
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
  
///Is the Particle alive or is it dead?
  boolean isDead() { 
    if (loc.y -sz/2 > height) {
      return true;
    } else {
      return false;
    }
  }
}

PVector loc;
PVector vel;
PVector acc;

int sz=80;

void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(800, 800);
  loc=new PVector(width/2, height/2);
  vel=new PVector(0, 0);
  acc=new PVector(random(-1, 1), random(-1, 1));
  background(0);
}

void draw() {

  acc.set(random(-1, 1), random(-1, 1));


  fill(frameCount%360, 100, 100);
  stroke(frameCount%360, 100, 50);

  vel.add(acc);



vel.limit(5);


  loc.add(vel);



  ellipse(loc.x, loc.y, sz, sz);


  if (loc.x - sz/2 > width) {      
    loc.x = -sz/2;
  }

  if (loc.x + sz/2 < 0) {          
    loc.x = width + sz/2;
  }

  if (loc.y - sz/2 > height) {     
    loc.y = -sz/2;
  }

  if (loc.y + sz/2 < 0) {        
    loc.y = height + sz/2;
  }
}


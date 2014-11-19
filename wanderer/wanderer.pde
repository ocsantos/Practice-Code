float locx;
float locy;
float velx;
float vely;
float accx;
float accy;
int sz=80;

void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(800, 800);
  locx=width/2;
  locy=height/2;
  velx=0;
  vely=0;
  accx = random(-1, 1);
  accy = random(-1, 1);
  background(0);
}

void draw() {

  accx = random(-1, 1);
  accy = random(-1, 1);

  fill(frameCount%360, 100, 100);
  stroke(frameCount%360, 100, 50);

  velx += accx;
  vely += accy;


  velx = constrain(velx, -5, 5);
  vely = constrain(vely, -5, 5);


  locx += velx;
  locy += vely;


  ellipse(locx, locy, sz, sz);


  if (locx - sz/2 > width) {      
    locx = -sz/2;
  }

  if (locx + sz/2 < 0) {          
    locx = width + sz/2;
  }

  if (locy - sz/2 > height) {     
    locy = -sz/2;
  }

  if (locy + sz/2 < 0) {        
    locy = height + sz/2;
  }
}


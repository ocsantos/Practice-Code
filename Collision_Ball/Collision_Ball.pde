PVector loc, acc, vel;
PVector loc2, acc2, vel2;
float sz,sz2;
PVector mouse;


void setup() {
  size(800, 650);
  loc=new PVector(width/2, height/2);
  vel=PVector.random2D();
  acc=new PVector(0, 0);
  loc2=new PVector(width/2, height/2);
  vel2=PVector.random2D();
  acc2=new PVector(0, 0);
  sz=100;
  sz2=50;
  mouse=new PVector();
}

void draw() {
  background(0);
  //Moving the Ball
  vel.add(acc);
  loc.add(vel);
  vel2.add(acc2);
  loc2.add(vel2);
  mouse.set(mouseX, mouseY);

  //Bounce Ball 
  if (loc.x+sz/2>width || loc.x-sz/2<0) {
    vel.x*=-1;
  }
  if (loc.y+sz/2>height || loc.y-sz/2<0) {
    vel.y*=-1;
  }
if (loc2.x+sz2/2>width || loc2.x-sz2/2<0) {
    vel2.x*=-1;
  }
  if (loc.y2+sz2/2>height || loc.y2-sz2/2<0) {
    vel2.y*=-1;
  if (loc.dist(loc2) <sz/2+sz2/2) {
    fill(255, 0, 0);
    println("Mouse On Fleek");
    if (loc.x < loc2.x) {
      vel.x=-abs(vel.x);
    } else { 
  vel.x=abs(vel.x);
}

if (loc.y< mouse.y) {
  vel.y=-abs(vel.y);
}else { 
  vel.y=abs(vel.y);
}
  }else {
  fill(0, 0, 255);
}
ellipse(loc.x, loc.y, sz, sz);
}


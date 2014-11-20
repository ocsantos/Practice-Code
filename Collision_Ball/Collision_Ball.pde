PVector loc;
float sz;
PVector mouse;


void setup() {
  size(800, 650);
  loc=new PVector(width/2, height/2);
  sz=40;
  mouse=new PVector();
}

void draw() {
  background(0);
  mouse.set(mouseX,mouseY);
  ellipse(loc.x,loc.y,sz,sz);
  if (loc.dist(mouse) <sz/2) {
    println("Mouse On Fleek");
    loc.set(random(width),random(height));
    
  }
}


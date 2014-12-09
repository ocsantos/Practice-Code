ArrayList<Bouncer> balls = new ArrayList<Bouncer>();

void setup() {
  size(800, 600);
  background(0);
  balls.add(new Bouncer(random(5, 80)));
}

void draw() {
  background(0);
  for (int i = 0; i < balls.size (); i++) {
    Bouncer b = balls.get(i);   
    b.display();
    b.move();
    b.bounce();

  }
}

void mousePressed() {
  balls.add(new Bouncer(random(5, 80)));
}

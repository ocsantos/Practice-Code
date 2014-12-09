ArrayList<Bouncer> balls = new ArrayList<Bouncer>();
int maxBalls = 200;

void setup() {
  size(800, 600);
  textSize(50);
  background(0);
}

void draw() {
  balls.add(new Bouncer(30));
  background(0);
  fill(255, 0, 0);
  for (int i = 0; i < balls.size (); i++) {
    Bouncer b = balls.get(i);    
    b.display();
    b.move();
    b.bounce();
  }
  fill(255);
  text(frameRate, 20, 50);
  //if there are more than 20 balls, remove the oldest one using .remove()
  if (balls.size() > maxBalls) {
    balls.remove(0);
  }
}

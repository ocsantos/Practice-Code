ArrayList<BouncyBall> food = new ArrayList<BouncyBall>();
BlackHole Biggie;

void setup() {
  size(800, 600);
  background(0);
  colorMode(HSB, 360, 100, 100, 100);
  Biggie = new BlackHole();
}

void draw() {
  background(0,0,50);
  Biggie.display();
  if (mousePressed) {
    food.add(new BouncyBall(random(5, 30), random(.1, 5)));
  }
  for (int i = 0; i < food.size (); i++) {
    BouncyBall b = food.get(i);
    b.display();
    b.move();
    b.isSuckedIn(Biggie);

    if (Biggie.consumes(b)) {
      food.remove(i); 
      Biggie.grow();
    }
  }
}

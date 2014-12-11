class BlackHole {
  PVector loc;
  float sz;

  BlackHole() {
    loc = new PVector(random(width), random(height));
    sz = 5;
  }

  void display() {
    fill(0);
    stroke(frameCount%360,100,100);
    strokeWeight(3);
    ellipse(loc.x, loc.y, sz, sz);
  }

  boolean consumes(BouncyBall food) {
    if (loc.dist(food.loc) < sz/2 + food.sz/2) {
      return true;      
    }
    else{
     return false; 
    }
  }
  
  void grow(){
   sz+=1; 
  }
}

int count=100;

PVector[] loc=new PVector[count];
PVector[] acc=new PVector[count];
PVector[] vel=new PVector[count];
float [] sz=new float[count];
float[] mass= new float[count];
int minDiam=10;
int maxDiam=60;

void setup() {
  size(800, 650);
  for (int i = 0; i < count; i++) {    
    sz[i] = random(minDiam, maxDiam);           
    loc[i] = new PVector(random(sz[i], width-sz[i]), random(sz[i], height-sz[i])); 
    vel[i] = PVector.random2D();     
    acc[i] = new PVector(0, 0);
    mass[i]=map(sz[i], minDiam, maxDiam, .2, 1);
  }
}
void draw() {
  background(106, 26, 26);
  for (int i = 0; i < count; i++) { 
    //Moving the Ball
    vel[i].add(acc[i]);
    loc[i].add(vel[i]);


    // Check Balls touch
    for (int j = 0; j < count; j++) {
      if (i!=j) {
        if (loc[i].dist(loc[j]) <sz[i]/2+sz[j]/2) {
          fill(229, 211, 0);
          print("Ball On Fleek!!!");
          //        if (loc[i].x < loc[j].x) {    
          //          vel[i].x = -abs(vel[i].x);
          //          vel[j].x = abs(vel[j].x);
          //        } else {
          //          vel[i].x = abs(vel[i].x);
          //          vel[j].x = -abs(vel[j].x);
          //        }
          //        if (loc[i].y < loc[j].y) {   
          //          vel[i].y = -abs(vel[i].y);
          //          vel[j].y = abs(vel[j].y);
          //        } else {
          //          vel[i].y = abs(vel[i].y);
          //          vel[j].y = -abs(vel[j].y);
          //        }
          //      } else {
          //        fill(0);
          //      }

          vel[i] = PVector.sub(loc[i], loc[j]);
          vel[i].normalize();  
          vel[i].div(mass[i]);
        } else {
          fill(0);
        }
      }
    }
    //Draw Balls
    ellipse(loc[i].x, loc[i].y, sz[i], sz[i]);

    //Bounce Ball off walls 
    if (loc[i].x + sz[i]/2 > width || loc[i].x - sz[i]/2 < 0) {
      vel[i].x *= -1;
    }
    if (loc[i].y + sz[i]/2 > height || loc[i].y - sz[i]/2 < 0) {
      vel[i].y *= -1;
    }
  }
}


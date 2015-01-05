class figures { 
  //Declare variables!!!
  float xpos, ypos, xspeed, sz;

  figures() {
    //Initialize!!!
    xpos = width-random(width/2);
    ypos = height-80;
    xspeed= int(random(-5, 5));
    if (xspeed==0) {
      xspeed=int(random(3, 5));
    }
    sz=20;
  }

//Create function display!!!
  void display() {
    fill(0);
    //Head!!!
    ellipse(xpos, ypos, sz, sz);
    //Body!!!
    line(xpos, ypos+10, xpos, ypos+55 );
    //Arms!!!
    line(xpos, ypos+30, xpos+20, ypos+5 );
    line(xpos, ypos+30, xpos-20, ypos+5 );
    //Legs!!!
    line(xpos, ypos+55, xpos+20, height);
    line(xpos, ypos+55, xpos-20, height);
  }
  
  //Create function cheer!!!
  void cheer() {
    textAlign(CENTER);
    text("WHOHOOO RAIN!!!", xpos+50, ypos-50, 20);
  }
  
  //Create function move!!!
  void move() {
    //Make the 
    xpos= xpos+xspeed;
    if (xpos>width || xpos<0) {
      xspeed*=-1;
    }
  }
}


 //Declare the image!!!
PImage Cloud; 
 // Declare the variables!!!
float xposcloud, xspeedcloud; 
//Declare and initialize the ArrayList!!!
ArrayList<Particle> p = new ArrayList<Particle>(); 
 // Declare and initialize an array of figures!!!
figures[] figures = new figures[6];

void setup() {
  size(900, 650); 
   //Initialize!!!
  xposcloud=5; 
  xspeedcloud=1.5;  
  Cloud = loadImage("cloudy!!!!.JPG"); 
   // Initialize each figures using a for loop!!!
  for (int i = 0; i < figures.length; i ++ ) { 
    figures[i] = new figures();
  }
  textSize(22);
}

void draw() {
   //A new Particle object is added to the ArrayList every cycle of the draw() by using the .add() method!!!
  p.add(new Particle());
  background(255);
   // Run each figures using a for loop!!!
  for (int i = 0; i < figures.length; i ++ ) {
     //Call the functions move,display and cheer!!!
    figures[i].move();
    figures[i].display(); 
    figures[1].cheer();   
  }
  //Use a for loop to go through all the values for the index!!!
  for (int i = p.size ()-1; i >= 0; i--) {
     //Declare a placeholder Particle and assign it the Particle that we get at the specified index!!!
    Particle currentParticle = p.get(i);
    currentParticle.display();
    currentParticle.move();
     //if the particle is dead, remove it from the list!!!
    if (currentParticle.isDead()) {
      p.remove(i);
    }
  }
   //Display the image!!!
  image(Cloud, xposcloud, 0, 250, 150);  
  // Make the image move!!!
  xposcloud=xposcloud+xspeedcloud; 
  if (xposcloud<0 || xposcloud>width-250 ) {
    xspeedcloud*=-1;

  }
 fill(147,7,7);
  text("WHY DO PEOPLE CHEER WHEN I PEE?",xposcloud+250,20,150,150);
}



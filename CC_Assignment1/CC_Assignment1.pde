Stars[] galaxy;
//Confetti[] Cfetti;
//Balloons[] loons;

Balloons bloons;
Confetti fetti;


//PImage greenBalloon;
//PImage blueBalloon;
PImage redBalloon;


//int totalFetti = 0;
void setup() {
  size(800, 600);
  smooth();
  //background();
  //frameRate(30);
  colorMode (HSB, 360, 100, 100);


  bloons = new Balloons();
  fetti = new Confetti();
  //Cfetti = new Confetti[100];
  // loons = new Balloons[3];

  //greenBalloon = loadImage("0.jpg");
  //blueBalloon = loadImage("1.jpg");
  redBalloon = loadImage("redBalloon.jpg");

  galaxy = new Stars[800];

  for (int i = 0; i < galaxy.length; i++) {
    galaxy[i] = new Stars();//calling new stars actually puts stars into array
    galaxy[i].x = int(random(800));
    galaxy[i].y = int(random(600));
  }

  for (int i = 0; i < galaxy.length; i++) {

    galaxy[i].scaling(10);
  }

  //  for (int i = 0; i < Cfetti.length; i++) {
  //    Cfetti[i] = new Confetti();
  //    Cfetti[i].xC = int(random(800));
  //    Cfetti[i].yC = int(random(600));
  //  }
}



void draw() {
  background(0, 0, 99);



  for (int i = 0; i < galaxy.length; i++) {
    galaxy[i].displayStar(int(random(255)), int(random(255)), int(random(255)));
  }

  //  PImage[] images = new PImage[2];      //tried this code from a tutorial- could figure it out with rest of prog
  //  for ( int i = 0; i< images.length; i++ )
  //  {
  //    images[i] = loadImage( i + ".jpg" );   // make sure images "0.jpg" to "11.jpg" exist
  //  }

  bloons.moveBalloons();
  fetti.displayConfetti();

//  if (keyPressed) {
//    if (key == 'c' || key == 'C') {
//      fetti.displayConfetti();
//    }
//  }

  if (keyPressed) {
    if (key == 'p' || key == 'P') {
      textSize(32);
      text("PARTY ON WAYNE", 10, 30);
    }
  }
}


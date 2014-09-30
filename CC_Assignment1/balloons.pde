class Balloons {

//  PImage greenBalloon;
//PImage blueBalloon;
//PImage redBalloon;

    float by = height/2;    //variables for location of balloons
    float bx = random(50, 750);



  void moveBalloons() {
    //by = by + speed; //increment by speed
    //fill(random(21, 360), random(0, 50), random (90, 100), 100);
    //fill(0, 77, 90);
    //noStroke();
    //ellipse(bx, by, 50, 80);  //balloon shape
    //line(bx, by, 50, 80);
    //image(greenBalloon, bx, by, 100, 100);
    image(redBalloon, bx, by, 100, 100);
    //image(blueBalloon, bx, by, 100, 100);
    by = by - 5;
    if (by <0){
     by = height;
    }
  }

}


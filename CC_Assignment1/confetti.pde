class Confetti {


  void displayConfetti()
  {

    if (mousePressed) {
      translate(mouseX, mouseY);
      rotate(random(2*PI));
      noStroke();
      fill(random(21, 360), random(0, 50), random (90, 100), 100);
      triangle(20, 60, 40, 70, 70, 40);
    }
  }
}


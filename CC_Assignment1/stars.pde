class Stars{
int x;
int y;
float reSize;
int r;
int g;
int b;


Stars() {

  reSize = random(5, 10);
}

void scaling(float reSize_) {


  reSize = reSize_;
}

void displayStar(int r_, int g_, int b_) {

  r = r_;
  g = g_;
  b = b_;
  fill(r, g, b);

  ellipse(x, y, 3, 3);
}



}







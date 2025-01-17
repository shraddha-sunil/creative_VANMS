int[] xP = new int[50];
int[] yP = new int[50];
int num = 20;
float step, sz, offSet, theta, angle;

void setup() {
  size(500,500);
  frameRate(60);
  smooth();
  for (int i = 0; i < xP.length; i ++ ) {
    xP[i] = 0;
    yP[i] = 0;
  }
  step = 5;
}

void draw() {
  background(0);
  angle=0;
  for (int i = 0; i < xP.length-1; i ++ ) {
    xP[i] = xP[i+1];
    yP[i] = yP[i+1];
  }

  xP[xP.length-1] = mouseX;
  yP[yP.length-1] = mouseY;
 
  for (int i = 0; i < xP.length; i ++ ) {
    stroke(#11FFEE);
    noFill();
    sz = i*step;
    float offSet = TWO_PI/num*i;
    float arcEnd = map(sin(theta+offSet),-1,1, PI, TWO_PI);
    arc(xP[i], yP[i], sz, sz, PI, arcEnd);
  }
    colorMode(RGB);
    resetMatrix();
    theta += .0523;
}

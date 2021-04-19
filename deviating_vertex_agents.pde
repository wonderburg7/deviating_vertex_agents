int centreX = width/2;
int centreY = height/2;
int formResolution = 200;
int startRadius = 200;
int stepSize = 1;

float x[] = new float[formResolution];
float y[] = new float[formResolution];


void setup() {
  size(700, 700);
  noFill();
  //translate(width/2, height/2);
  int tempX = 0;
  int tempY = 0;
  for (int i =0; i <formResolution; i++) {
    x[i] = tempX;
    y[i] = tempY;
    tempY += int(height/formResolution);
    //ellipse(x[i], y[i], 5, 5);
  }
}

void draw() {
  //background(115);

  //translate(width/2, height/2);

  for (int i =0; i <formResolution; i++) {
    x[i] += random(-stepSize, stepSize);
    y[i] += random(-stepSize, stepSize);
    //ellipse(x[i], y[i], 5, 5);
  }

  beginShape();
  curveVertex(x[formResolution-1], y[formResolution-1]);

  for (int i =0; i <formResolution; i++) {
    curveVertex(x[i], y[i]);
    x[i] += 2;
  }
  curveVertex(x[0], y[0]);
  //curveVertex(x[1], y[1]);

  endShape();
}

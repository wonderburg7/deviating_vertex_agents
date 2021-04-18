int centreX = width/2;
int centreY = height/2;
int formResolution = 10;
int startRadius = 200;
int stepSize = 3;

float x[] = new float[formResolution];
float y[] = new float[formResolution];


void setup(){
  size(700, 700);
  translate(width/2, height/2);
  float angle = radians(360/float(formResolution));
  for (int i =0; i <formResolution; i++){
   x[i] = cos(angle*i) * startRadius;
   y[i] = sin(angle*i) * startRadius;
   ellipse(x[i], y[i], 5, 5);
  }
}

void draw(){
    background(115);

    translate(width/2, height/2);

    for (int i =0; i <formResolution; i++){
    x[i] += random(-stepSize, stepSize);
    y[i] += random(-stepSize, stepSize);
    ellipse(x[i], y[i], 5, 5);
    }
    
    beginShape();
    curveVertex(x[formResolution-1], y[formResolution-1]);
    
        for (int i =0; i <formResolution; i++){
    curveVertex(x[i], y[i]);
    }
    curveVertex(x[0], y[0]);
    curveVertex(x[1], y[1]);
    
    endShape();
}

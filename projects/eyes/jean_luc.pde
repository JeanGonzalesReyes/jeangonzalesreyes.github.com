int num = 60;
float mx[] = new float[num];
float my[] = new float[num];
  
 void setup() {
  size( 500, 500 );  
  smooth();
}
int value = 250;

void draw() {
  background(0, 0, 0); 
  float eyew = 180;
  float eyeh = min(250, max(110, mouseY));
  eye( 100, height/2, eyew, eyeh );
  eye( 400, height/2, eyew, eyeh );
 
  arc(250, 400, height/2, height/2, 0, PI); 

  fill(0,0,50,5.5);
  rect(0,0,width,height);

  float x = (sin(frameCount / 34.3) * 300) + width/2;
  float y = (cos(frameCount / 13.4) * 20) + height/2;
  float r = sin(frameCount / 20.5) * 50;
  ellipse(x, y, r, r);
  
  
  float a = (sin(frameCount / 34.3) * 10) + width/2;
  float b = (cos(frameCount / 13.4) * 300) + height/2;
  float c = sin(frameCount / 20.5) * 50;
  ellipse(a, b, c, c);
 
}


  
  






void eye( float eyex, float eyey, float eyew, float eyeh ) {
  stroke(225, 0, 255);
  fill(random(255,255));
  ellipse(eyex, eyey, eyew, eyeh);
  if (mousePressed) {
    // pupil
    noStroke();
    fill(255, 0, 0);
    ellipse(eyex, eyey, 80, 80);       
    // laser
    strokeWeight(7);
    stroke( 0, random(255), (sin(frameCount / 10.0f) * 255) + 128 );
    line(eyex, eyey, mouseX, mouseY);
  } 
  else {
    // eye whites
    noStroke();
    fill(255);
    ellipse(eyex, eyey, eyew - 100, eyeh - 100); 
    fill(0);
    ellipse(eyex, eyey, 10, 10);
  }
}




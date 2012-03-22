

void setup() {
  size(500, 500);
  smooth();
  fill(0);
}

void draw() {
  fill(#000000, 5);
  rect(0, 0, 500, 500);
  
  
  noStroke();
  float rad = dist(mouseX, mouseY, width/2, height/2);
  float mouse_angle = atan2(mouseY-height/2, mouseX-width/2);
  int numThings = 4;
  float angle = TWO_PI / numThings;

  for (int i = 0; i < numThings; i++) {
    float dx =  width / 2 + rad * cos(angle * i + mouse_angle);
    float dy = height / 2 + rad * sin(angle * i + mouse_angle);
    fill (#FF0505);
    ellipse(dx, dy, 15, 15);
    
    
    
    
    float dc =  width / 2 + 30 + rad * cos(angle * i + mouse_angle);
    float dd = height / 2 + 30 + rad * sin(angle * i + mouse_angle);
    fill (#0017FF);
    ellipse(dc, dd, 15, 15);
    
    
    
     float da =  width / 2 + 15 + rad * cos(angle * i + mouse_angle);
    float db = height / 2 +15 + rad * sin(angle * i + mouse_angle);
     fill (#FEFF00);
    ellipse(da, db, 15, 15);
    
    
    
    
     float dq =  width / 2 - 15 + rad * cos(angle * i + mouse_angle);
    float dw = height / 2 - 15 + rad * sin(angle * i + mouse_angle);
     fill (#4B39B2);
    ellipse(dq, dw, 15, 15);
    
    
    
     float dj =  width / 2 - 30 + rad * cos(angle * i + mouse_angle);
    float dl = height / 2 - 30 + rad * sin(angle * i + mouse_angle);
     fill (#41B239);
    ellipse(dj, dl, 15, 15);
  }
}



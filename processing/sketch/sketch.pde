int videoScale = 8; 
// Number of columns and rows in the system
int cols, rows;

void setup() {  
  size(300, 300);  
  // Initialize columns and rows  
  cols = width/videoScale;  
  rows = height/videoScale;
}

void draw() {  
  // Begin loop for columns  
  for (int i = 0; i < cols; i++) {    
    // Begin loop for rows    
    for (int j = 0; j < rows; j++) {    
      // Scaling up to draw a rectangle at (x,y)      
      int x = i*videoScale;      
      int y = j*videoScale;
      int criteria = int(rows/2);
      if(j<(cols/2) && i>(criteria-j) && i<(criteria+j)){
         fill(0,128,0); 
      }else if(j>=(cols/2) && i>=(criteria-j+(cols/3)) && i<=(criteria+j-(cols/3))){
        fill(0, 128, 0);
        if(j>criteria+(cols/3) && !(i<criteria+3 && i>criteria-3)){
          fill(255);
        }
      }else{
        fill(255);
      }
      stroke(0);      
      rect(x, y, videoScale, videoScale);
    }  
  }
  pushMatrix();
  star(150, 20, 15, 40, 5);
  popMatrix();
}
void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  fill(255, 255, 0);
  endShape(CLOSE);
}

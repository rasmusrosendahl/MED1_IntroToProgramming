class Flower {
  
 // Variables
 
 float r;       // radius of the flower petal
 int n_petals;  // number of petals 
 float x;       // x-position of the center of the flower
 float y;       // y-position of the center of the flower
 int petalColor;//hexadecimal number for the color of petals
 
 float flowerSpeed; // Speed of the flower
 float dirX; // Direction of the flower on the x axis
 float dirY; // Direction of the flower on the y axis
 
Flower(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor, float _flowerSpeed, float _dirX, float _dirY) {
  r=temp_r;
  n_petals = temp_n_petals;
  x=temp_x;
  y=temp_y;
  petalColor = temp_petalColor;
 
 flowerSpeed = _flowerSpeed;
 dirX = _dirX;
 dirY = _dirY;
  
}

void display () {
  
  float ballX;
  float ballY;
  
  
  fill(petalColor);
  for (float i=0;i<PI*2;i+=2*PI/n_petals) {
//  ballX=width/2 + r*cos(i);
//  ballY=height/2 + r*sin(i);
  ballX=x + r*cos(i);
  ballY=y + r*sin(i);
  ellipse(ballX,ballY,r,r); 
  }
  fill(200,0,0);
  ellipse(x,y,r*1.2,r*1.2);
  
  
}

void move () {

  x += flowerSpeed * dirX;
  y += flowerSpeed * dirY;
}

void bounce () {
  
  if(x > width || x < width - width) {
    dirX *= -1;
    backgroundR = random(255);
    backgroundG = random(255);
    backgroundB = random(255); 
    
  }
  if(y > height || y < height - height) {
    dirY *= -1;
    backgroundR = random(255);
    backgroundG = random(255);
    backgroundB = random(255);
  }

}
}

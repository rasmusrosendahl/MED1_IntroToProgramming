Flower myFlower1;  // the first instance of the Flower class
Flower myFlower2;
Flower myFlower3;

float backgroundR = random(255);
float backgroundG = random(255);
float backgroundB = random(255);

void setup() {
  size(800,600);
  
  
  int _r1= 60;
  int _petals= 7;
  float _x=width/2;
  float _y=height/2;
  int _pc=#FFA000;
  float speed = random(2,6);
  float dirX = -1;
  float dirY = 1;
  myFlower1 = new Flower(_r1,_petals,_x + random(-300,300),_y,_pc,speed, dirX, dirY);
  myFlower2 = new Flower(_r1,_petals,_x+random(-100,100),_y,_pc,speed,dirX * -1,dirY * -1);
  //myFlower3 = new Flower(_r1,_petals,_x+50,_y,_pc);

//  myFlower2 = new Flower();
//   myFlower3 = new Flower();
}

void draw(){
  background(backgroundR,backgroundG,backgroundB);
  myFlower1.display();
  myFlower2.display();
  //myFlower3.display();
  myFlower1.move();
  myFlower2.move();
  
  myFlower1.bounce();
  myFlower2.bounce();
  //noLoop();
}

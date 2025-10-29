//your code here
Particle[][] uh = new Particle[10][10];
int start = 0;
void setup()
{
  size(550,550);

  for(int y = 1; y<=10; y++){
    for(int x = 1; x<=10; x++){
      uh[y-1][x-1] = new Particle(x*50,y*50);
    }
  }
  uh[5][5] = new OddballParticle();
  //your code here
}
void draw()
{
  background(255);
  for(int y = 0; y<10; y++){
      for(int x = 0; x<10; x++){
        uh[y][x].show();
      }
    }
  if(start>100){
    background(255);
    for(int y = 0; y<10; y++){
      for(int x = 0; x<10; x++){
        uh[y][x].move();
        uh[y][x].show();
      }
    }
  }
  start++;
  //your code here
}
class Particle
{
  double myX,myY,myAngle,mySpeed;
  int colour;
  Particle(int x, int y){
    myX = x;
    myY = y;
    myAngle = Math.random()*360;
    mySpeed = Math.random()*10;
    colour = #888c8d;
  }
  Particle(){
    myX = 250;
    myY = 250;
    myAngle = Math.random()*360;
    mySpeed = Math.random()*10;
    colour = #888c8d;
  }
  void move(){
    myX += Math.cos(myAngle)*mySpeed; 
    myY += Math.sin(myAngle)*mySpeed; 
  }
  void show(){
    fill(colour);
    ellipse((float)myX,(float)myY,10,10);
  }
  //your code here
}

class OddballParticle extends Particle//inherits from Particle
{
  OddballParticle(){
    myX = 300;
    myY = 300;
    myAngle = Math.random()*360;
    mySpeed = Math.random()*1.5;
    colour = #000000;
  }
  void move(){
    if(Math.random()<0.5){
    myX += Math.cos(myAngle)*mySpeed*2; 
    myY += Math.sin(myAngle)*mySpeed*2; 
    }else{
    myX -= Math.cos(myAngle)*mySpeed; 
    myY -= Math.sin(myAngle)*mySpeed; 
    }
  }
  
  void show(){
    fill(colour);
    ellipse((float)myX,(float)myY,20,20);
  }
  //your code here
}

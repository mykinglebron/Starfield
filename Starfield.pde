Particle[] P= new Particle [50];

void setup(){
 size(400,400);
 noStroke();
 smooth();

 for( int i=0; i<P.length; i++){
  P[i]=new Particle(); 
 }
 for(int i=48; i<P.length; i++){
  P[i]=new oddP(); 
 }
  
}
void draw(){
 background(0);
 
 for( int i=0; i<P.length; i++){
  P[i].show();
  P[i].move();
 }
 
  
}







class Particle{
  double myAngle, mySpeed, myX,myY;
  int myColor;
  int mySize;
    Particle(){
      myX=(int)(((Math.random()*31)-10)+200);
      myY=(int)(((Math.random()*31)-10)+200);
      myAngle= Math.PI* Math.random()*3;
      mySpeed= Math.random()*5+1;
      myColor= color((int)(Math.random()*256),(int)(Math.random()*256),
      (int)(Math.random()*256));
      mySize=(int)((Math.random()*6)+2);
      
    }
  void move(){
    myX=myX+Math.cos(myAngle)*(mySpeed);
    myY=myY+Math.sin(myAngle)*(mySpeed);
    if(myX>400){
    myX=(int)(((Math.random()*31)-10)+200);;
    myY=(int)(((Math.random()*31)-10)+200);;
   // myAngle= Math.PI* Math.random()*3;
    //  mySpeed= Math.random()*5+2;
    }
    if(myX<0){
    myX=(int)(((Math.random()*31)-10)+200);;
    myY=(int)(((Math.random()*31)-10)+200);;
  //  myAngle= Math.PI* Math.random()*3;
    //  mySpeed= Math.random()*5+3;
    }
    if(myY>400){
    myY=(int)(((Math.random()*31)-10)+200);;
    myX=(int)(((Math.random()*31)-10)+200);;
   // myAngle= Math.PI* Math.random()*3;
    //  mySpeed= Math.random()*5+3;
    }
    if(myY<0){
    myY=(int)(((Math.random()*31)-10)+200);;
    myX=(int)(((Math.random()*31)-10)+200);;
   // myAngle= Math.PI* Math.random()*3;
    //  mySpeed= Math.random()*5+3;
    }
  }
  void show(){
    fill(myColor);
    ellipse((float)myX,(float)myY,mySize,mySize);
  }
  

  
  
}
class oddP extends Particle{
  oddP(){
    myX=myY=200;
    myAngle= Math.PI* Math.random()*3;
    mySpeed= Math.random()*5;
    myColor=color(255,255,255);    
  }
  void show(){
    fill(myColor);
    rect((float)myX,(float)myY,15,15);
  }
}



void mousePressed(){
//make thhe particles again

  for( int i=0; i<P.length; i++){
  P[i]=new Particle(); 
 }
 for(int i=48; i<P.length; i++){
  P[i]=new oddP(); 
 }

 
 
}

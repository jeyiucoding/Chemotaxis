Car bob;
Car sue;
Car[] cars = new Car[30];
Walker[] ohio = new Walker[20]; //first call to new
boolean gameContinue =true;
void setup(){
 
  size(1000,500);
  bob = new Car();
  sue = new Car(color(255,0,0), 0, 10, 2);
  for (int i = 0; i < cars.length; i++) {
    cars[i] = new Car(color(i*2), 0, i*20, i/3);
  }
   for(int i = 0; i < ohio.length; i++){
  ohio[i] = new Walker(270, 190); // second call to new
 }

}

void draw(){
  background(255);
  //bob.move();
  //bob.show();
  //sue.move();
  //sue.show();
//  for (int i = 0; i < cars.length; i++) {
//  cars[i].move();
//  cars[i].show();
//}
//  for(int i = 0; i < ohio.length;i++){
//     ohio[i].walk();
//     ohio[i].show();
     //if(get(ohio[i].myX, ohio[i].myY) != color(255,219,129)){
     //  text('w',200,200);
     //}
     if(gameContinue == true){
        for (int i = 0; i < cars.length; i++) {
  cars[i].move();
  cars[i].show();
}
  for(int i = 0; i < ohio.length;i++){
     ohio[i].walk();
     ohio[i].show();
     }
  }
 
   for (int i = 0; i < cars.length; i++) {
      for(int k = 0; k < ohio.length;k++){
        if(dist(cars[i].myX,cars[i].myY, ohio[k].myX, ohio[k].myY) <5){
           gameContinue =false;
           break;
         }
         //System.out.println(dist(cars[i].myX,cars[i].myY, ohio[k].myX, ohio[k].myY));
         
         
         }
          if(gameContinue == false){
            fill(255,0,0);
            textSize(50);
            text("YOU DIED", 400,200);
            break;
           //noLoop();
           //System.out.println(dist(cars[i].myX,cars[i].myY, ohio[k].myX, ohio[k].myY));
         }
      }
   //   if(gameContinue==false){
   //        fill(255,0,0);
   //        textSize(50);
   //        text("YOU DIED", 400,200);
   //        //noLoop();
   //        //System.out.println(dist(cars[i].myX,cars[i].myY, ohio[k].myX, ohio[k].myY));
   //}
}

class Car{
  color myC;
  float myX, myY, myXspeed;
 
  Car(){
    myC = color(255);
    myX = width/2;
    myY = height/2;
    myXspeed = 1;
  }
  //overloaded constructor
  Car(color c, float x, float y, float s){
   myC = c;
   myX = x;
   myY = y;
   myXspeed = s;
  }
 

  void show(){
   //rectMode(CENTER);
   fill(myC);
   rect(myX, myY, 20, 10);
  }
 
  void move(){
   myX += myXspeed;
   if(myX > width)
     myX = 0;
  }
}//end Car class

class Walker{
  //two member variable
  int myX, myY;
 
  //three member functions
  //special one: CONSTRUCTOR
  Walker(){
    myX = width/2;
    myY = height/2;
  }
  Walker(int x, int y){ //overloaded constructor
    myX = x;
    myY = y;
  }
  //the other two member functions
  void show(){
    fill(255,219,129);
    ellipse(myX, myY, 10,10);
}
  void walk(){
    if(mouseX > myX){
      myX = myX + (int)(Math.random()*20)-4;// -1, 0, 1
    }
    else{
      myX = myX + (int)(Math.random()*20)-12;// -1, 0, 1
    }
    if(mouseY > myY){
      myY = myY + (int)(Math.random()*20)-4;// -1, 0, 1
    }
    else{
      myY = myY + (int)(Math.random()*20)-12;// -1, 0, 1
    }
    //void death(){
    //  if(
    //}
  }//make x,y conditional so that gamecontinue can run conditionally AHHHHHHHHHH
}

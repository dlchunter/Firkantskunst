int BoxSize = 10;


void setup() {    //

  size(690,690, P3D);    //Sætter størrelsen for skærmen.
  rectMode(CENTER);    //Sætter synspunkt til midten.
  
  
}

void draw() {      //
  pointLight(51, 102, 126, width/2, height/2, 300);    //Pointere lyset i midten af rummet.
  background(0);  //Sætter baggrunen til sort farve.
 
  translate(width/2, height/2,0);  //Sætter musen til centeret af skærmen.
  rotateX(atan(-mouseY/(height*2*PI))*3);  //Rotere kuben omkring musen i X.
  rotateY(atan(mouseX/(width*2*PI))*3);  //Rotere kuben omkring musen i Y.          
       
 translate(-BoxSize*10/2,-BoxSize*10/2,-BoxSize*10/2);  //
 
    for(int x=0; x < 10; x++) {    //For loop for x-størrelse
      for(int y=0; y < 10; y++) {    //For loop for y-størrelse
        for(int z=0; z < 10; z++) {    //For loop for z-størrelse
          pushMatrix();    //Gør at alt indenfor translationen kun bliver gjort inden for push og pop matrix.
          translate(x*BoxSize,y*BoxSize,z*BoxSize);    //Translatere boksens størrelse efter forloopet.
          box(BoxSize-random(5));    //Giver den en random størrelse.
          popMatrix();    //Slutter matrixen.
       
        }
      }
    }
   
}

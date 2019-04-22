//Face jeff, chris, nancy, nick;

//PShape eyeLeft, eyeRight;
//PShape nose;
ArrayList<Face> faces = new ArrayList<Face>();
//String[] noses = {"nose/nose1.svg","nose/nose2.svg" };



void setup() {
  size(792,1224);
  
  for (int i=0; i<800; i++) {
    Face f = new Face(int(random(width)), int(random(height)));
    faces.add(f);
  }
  
  
  
}

void draw() {
  background(255);
  
  for (int i=0; i<100; i++) {
    Face f = faces.get(i);
  
    f.display();
  }
  
  for (Face f : faces) {
   
    f.display();
  }
  
 
    }



class Face {
  float x, y;
  int dia;
  color c;
  
  // constructor
  Face(int _x, int _y) {
    x = _x;
    y = _y;
    dia = int(random(300,400));
    //c = color(random(150,255), random(100,200), random(200,255));
    c = color(random(150,255), random(100,150), random(100,200));
   
  }
  
  // methods
  void display() {
    pushMatrix();
    translate(x,y);
    
    fill(c);
    stroke(0);
    strokeWeight(10);
    ellipse(0,0, dia,dia);
   
   noStroke();
    fill(0);
    float eyeHeight= random(75,100);
    float eyeHeight2= eyeHeight + 20;
    ellipse(-80,-15, eyeHeight2,100);   // left eye
    ellipse(80,-15, eyeHeight2,100);    // right eye
    
    fill(255);
    ellipse(-80,-15, eyeHeight,80);   // left eye
    ellipse(80,-15, eyeHeight,80);    // right eye
    
    fill(0);
    float pupils= random(5,40);
    ellipse(-80,-15, pupils,pupils);   // left eye
    ellipse(80,-15, pupils,pupils);    // right eye
    
    float mouth1= random(14,35);
    float mouth2= mouth1/2*-1;
    rect(mouth2, random(60,80), mouth1,5);      //
    
    popMatrix();
    
    if (key=='s'){
        save("Faces7.pdf");
        
    }
  }
  
  
  
}

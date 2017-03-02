
Segment join1;
Segment join2;
Segment join3;


void setup(){

  //fullScreen();
  size(640,480);
  join1 = new Segment(45,-90,90,10,100,200,200);
  join2 = new Segment();
  join3 = new Segment();
  
  join1.attach(join2);
  join2.attach(join3);
  
}

void draw(){
  
  join1.display();
  //join2.display();
  //join3.display();
}
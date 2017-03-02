class Segment{

  
  float theta;//current join angle
  float limitInf;//min join angle
  float limitSup;//max join angle
  float joinX;
  float joinY;
  PVector segment = new PVector(0,0);
  float largeur;
  float longueur;
  float thetaOffset = -HALF_PI; //offset for drawing
  
  Segment parent = null;
  Segment child = null;
  Segment(){
    theta = 0;
    limitInf = PI/6;
    limitSup = TWO_PI - PI/6;
    largeur = 10;
    longueur = 100;
    joinX = 0;
    joinY = 0;
    segment.x = longueur * cos(theta);
    segment.y = longueur * sin(theta);
  }
  
  Segment(float theta , float limitInf , float limitSup, float largeur, float longueur , float joinX , float joinY){
    this.theta = theta;
    this.limitInf = limitInf;
    this.limitSup = limitSup;
    this.largeur = largeur;
    this.longueur = longueur;
    this.joinX = joinX;
    this.joinY = joinY;
    
    
  }
  
  
  
  void attach(Segment child){
    
   child.parent = this;
   this.child = child;
  }
  
  void setTheta(float theta){
  
    this.theta = theta;
    child.
  
  }
  
  void display(){
    
    
    pushMatrix();
    
    
    
    if(parent != null){
      
      rotate((theta -parent.theta) + thetaOffset);
    }else{
      translate(joinX,joinY);
      rotate(theta+thetaOffset);
    }
    
    rect(0,0,largeur,longueur);
    ellipse(largeur * 0.5,0,2 * largeur,2 * largeur);
    popMatrix();
  }
}
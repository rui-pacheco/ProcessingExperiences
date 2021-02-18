Point p ;
float xoff = 0.0;
float yoff = 0.0;
void setup(){
  size(400,400);
  background(255);
  p = new Point();
  
}

void draw (){
 /* for(int i = 0 ;i<=width;i++){
    stroke(0);
    fill(0);
    
    
  }*/  
  
  push();
  translate(width/2,height/2);
  p.show();
  p.walk();
  pop();
}
  
class Point{
  float x1,x2;
  float y1,y2;
  int add;
  
  Point(){
    float rx = random(-width/2,width/2);
    float ry = random(-width/2,width/2);
    x1=rx;
    y1=ry;
    x2=-rx;
    y2=y1;
  }
  void show(){
    circle(x1,y1,3);
    circle(x2,y2,3);
  }
  void walk(){
    xoff = xoff + 0.1;
    yoff = yoff + 0.001;
    float nx = noise(xoff);
    float ny = noise (yoff);
    float nxm = map(nx,0,1,-2,2);
    float nym = map(ny,0,1,-2,2);
    print("PP  "+nx+"  PP");
    float rx =  nxm;
    float ry = nym;
    /*int rx =(int)random(-3,3);
    int ry = (int)random(-3,3);*/
    
    x1=x1+rx;
    y1=y1+ry;
    x2=x2-rx;
    y2=y2+ry;
    if (x1<-width/2){
     x1=width/2; 
    }
    if (x1>width/2){
     x1=-width/2; 
    }
    if (x2<-width/2){
     x2=width/2; 
    }
    if (x2>width/2){
     x2=-width/2; 
    }
    if (y1<-height/2){
     y1=height/2; 
    }
    if (y1>height/2){
     y1=-height/2; 
    }
     if (y2<-height/2){
     y2=height/2; 
    }
    if (y2>height/2){
     y2=-height/2; 
    }
  }
}
  

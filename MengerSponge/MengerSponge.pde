float a;
Box b;
ArrayList<Box> sponge;
void setup(){
  sponge = new ArrayList<Box>();
  a = 0;
  b = new Box(0, 0, 0, 200);
  sponge.add(b);
}

void settings(){
  size(400, 400, P3D);
}

void draw(){
 background(51);
 stroke(255);
 noFill();
 lights();
 
 translate(width/2, height/2);
 rotateX(a);
 rotateY(a*0.4);
 rotateZ(a*0.1);
 for(Box b:sponge){
   b.show();
 }
 
 a += 0.01;
}

void mousePressed(){
  ArrayList<Box> next = new ArrayList<Box>();
  for(Box b : sponge){
    ArrayList<Box> newBoxes = b.generate();
    next.addAll(newBoxes);
  }
  sponge = next;
}
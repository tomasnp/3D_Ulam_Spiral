import peasy.*;
int I = 10; //nombres rangées
int ta = 17; //taille cube
int N = 1; //valeur de départ
int[][] allimages = images(4000);
float s = 10000000.0;
float t = 10000000.0;

PShader myShader;
PGraphics pg;
PeasyCam cam;
void setup(){
  size(1300, 900, P3D);
  myShader = loadShader("myFragmentShader.glsl", "myVertexShader.glsl");
  cam = new PeasyCam(this,600);
  cam.lookAt(500,300,0);
  pg = createTexture();
}

void draw (){
  //shader(myShader);
  background(200,200,250);
  translate(0,0,-50);
  polynome1();
  polynome2();
  polynome3();
  rotation();
  
  pushMatrix();
  //image(pg,100,100); //texture  

  translate(800,height/4,(I/2)*ta);
  rotateY(frameCount/s);
  rotateX(frameCount/t);
  
  translate(-I/2*ta,0,I/2*ta);
  shape(BigCube(I));
  popMatrix();
  
  pushMatrix();
  translate(200,height/4,(I/2)*ta);
  rotateY(frameCount/s);
  rotateX(frameCount/t);
  translate(-ta/2,0,-ta/2);
  shape(Pyramid2(I));
  popMatrix();
  
  pushMatrix();
  translate(width/2-(I+1)*ta,300,(I/2)*ta);
  rotateY(frameCount/s);
  rotateX(frameCount/t);
  translate(-ta/2,0,-ta/2);
  shape(Pyramid(I));
  popMatrix();
  
}

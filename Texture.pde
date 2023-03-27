//renvoi texture de 1 à 100 et 4 couleurs pour valeur >= 101

PGraphics createTexture(){
  PGraphics pg = createGraphics(ta*10,ta*11);
  pg.beginDraw();
    pg.fill(255);
    pg.beginShape();
    pg.strokeWeight(0);
    pg.vertex(4*ta,10*ta);
    pg.vertex((5)*ta,10*ta);
    pg.vertex((5)*ta,(11)*ta);
    pg.vertex(4,(11)*ta);
    pg.endShape();
    pg.fill(0);
    pg.textSize(3*ta/4);
    pg.text(0, 4*ta, (11)*ta);
    
  for(int j = 0; j < 10; j++){
    for(int i = 0; i < 10; i++){
      color z = checkColor(N);
      pg.fill(z);
      pg.beginShape();
      pg.vertex(i*ta,j*ta);
      pg.vertex((i+1)*ta,j*ta);
      pg.vertex((i+1)*ta,(j+1)*ta);
      pg.vertex(i*ta,(j+1)*ta);
      pg.endShape();
      pg.fill(0);
      pg.textSize(3*ta/4);
      pg.text(N, i*ta, (j+1)*ta);
      N++;
    }
  }
  for(int i =0; i <=3; i++){
    color c = checkColor(i+27);
    pg.fill(c);
    pg.beginShape();
    pg.vertex(i*ta,10*ta);
    pg.vertex((i+1)*ta,10*ta);
    pg.vertex((i+1)*ta,11*ta);
    pg.vertex(i*ta,11*ta);
    pg.endShape();
  }
  pg.endDraw();
  return pg;
}

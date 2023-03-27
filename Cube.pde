// renvoi cube avec p et bonne couleur

PShape cube(int p){     // coordonée valeur = ( (v%10)-1, (v - (v %10)) / 10 ) pour v <= 100
  PShape box;
  box = createShape();
  box.beginShape(QUADS);
  box.strokeWeight(2.5);
  box.texture(pg);
  int d = (p-(p%10))/10;
  int u = diz(p);
  if(p%10 == 0) d--;
  if(p>=101 || p<=0){
    int pp = testColor(p);
    d = 10;
    box.vertex(0,0,ta,pp*ta,d*ta); box.vertex(0,ta,ta,pp*ta,(d+1)*ta); box.vertex(0,ta,0,(pp+1)*ta,(d+1)*ta); box.vertex(0,0,0,(pp+1)*ta,d*ta);
    //droite
    box.vertex(ta,0,0,pp*ta,d*ta); box.vertex(ta,ta,0,pp*ta,(d+1)*ta); box.vertex(ta,ta,ta,(pp+1)*ta,(d+1)*ta); box.vertex(ta,0,ta,(pp+1)*ta,d*ta);
    //haut
    box.vertex(0,0,0,pp*ta,d*ta); box.vertex(0,0,ta,pp*ta,(d+1)*ta); box.vertex(ta,0,ta,(pp+1)*ta,(d+1)*ta); box.vertex(ta,0,0,(pp+1)*ta,d*ta);
    //bas
    box.vertex(0,ta,0,pp*ta,d*ta); box.vertex(0,ta,ta,pp*ta,(d+1)*ta); box.vertex(ta,ta,ta,(pp+1)*ta,(d+1)*ta); box.vertex(ta,ta,0,(pp+1)*ta,d*ta);
    //arriere
    box.vertex(0,0,0,pp*ta,d*ta); box.vertex(0,ta,0,pp*ta,(d+1)*ta); box.vertex(ta,ta,0,(pp+1)*ta,(d+1)*ta); box.vertex(ta,0,0,(pp+1)*ta,d*ta);
    //avant
    box.vertex(0,0,ta,pp*ta,d*ta); box.vertex(0,ta,ta,pp*ta,(d+1)*ta); box.vertex(ta,ta,ta,(pp+1)*ta,(d+1)*ta); box.vertex(ta,0,ta,(pp+1)*ta,(d)*ta);
    
  }else{
    //arriere
    box.vertex(0,0,0,(u+1)*ta,d*ta); box.vertex(0,ta,0,(u+1)*ta,(d+1)*ta); box.vertex(ta,ta,0,u*ta,(d+1)*ta); box.vertex(ta,0,0,u*ta,d*ta);
    //avant
    box.vertex(0,0,ta,u*ta,d*ta); box.vertex(0,ta,ta,u*ta,(d+1)*ta); box.vertex(ta,ta,ta,(u+1)*ta,(d+1)*ta); box.vertex(ta,0,ta,(u+1)*ta,(d)*ta);
    //gauche
    box.vertex(0,0,ta,(u+1)*ta,d*ta); box.vertex(0,0,0,u*ta,d*ta); box.vertex(0,ta,0,u*ta,(d+1)*ta); box.vertex(0,ta,ta,(u+1)*ta,(d+1)*ta); 
    //droite
    box.vertex(ta,0,0,(u+1)*ta,d*ta); box.vertex(ta,0,ta,u*ta,d*ta); box.vertex(ta,ta,ta,u*ta,(d+1)*ta);  box.vertex(ta,ta,0,(u+1)*ta,(d+1)*ta); 
    //haut
    box.vertex(0,0,0,u*ta,d*ta); box.vertex(0,0,ta,u*ta,(d+1)*ta); box.vertex(ta,0,ta,(u+1)*ta,(d+1)*ta); box.vertex(ta,0,0,(u+1)*ta,d*ta);
    //bas
    box.vertex(0,ta,0,u*ta,(d+1)*ta); box.vertex(0,ta,ta,u*ta,d*ta); box.vertex(ta,ta,ta,(u+1)*ta,d*ta); box.vertex(ta,ta,0,(u+1)*ta,(d+1)*ta);
    
  }
  box.endShape();
  return box;
}


// fonction rubiks cube avec X cubes de largeur et longeur

PShape BigCube(int X){
  PShape bigbox;
  bigbox = createShape(GROUP);
  PShape box;
  int cpt = 1;
  for(int k =0; k< X; k++){
    for(int j =0; j< X; j++){
      for(int i =0; i< X; i++){
        int img = aa*allimages[cpt][1] + bb*allimages[cpt][0] + cc;
        box = cube(img);
        box.translate(i*ta,0,0);
        if(i == 0 || j ==0 || k == 0 || k == X-1 || j == X-1 || i == X-1){  // cube creu ou plein
          bigbox.addChild(box);
          cpt++;
        }
        box.translate(0,j*ta,0);
        box.translate(0,0,-(k+1)*ta);
        
      }
    }
  }
  return bigbox;
}

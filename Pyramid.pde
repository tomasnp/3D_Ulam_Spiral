//renvoi pyramide spirale Ulam 1-4
PShape Pyramid2(int X){
  PShape py;
  py = createShape(GROUP);
  
  float x = 0; float y = 1; float z = 0;
  int n = 1;
  int cpt = 1;
  int img = a*allimages[cpt][1] + b*allimages[cpt][0] + c;
  PShape box = cube(img);
  py.addChild(box);
  cpt++;
    for(int j = 0; j < X-1; j++){
      img = a*allimages[cpt][1] + b*allimages[cpt][0] + c;
      box = cube(img); DAR(box,x,y,z); x=x+0.5; z-=0.5; py.addChild(box);
      cpt++;
      for (int i = 0; i < n-1; i++){
        img = a*allimages[cpt][1] + b*allimages[cpt][0] + c;
        box = cube(img); AR(box,x,y,z); z--; py.addChild(box);
        cpt++; 
      }
      for (int i = 0; i <= n-1; i++){
        img = a*allimages[cpt][1] + b*allimages[cpt][0] + c;
        box = cube(img); G(box,x,y,z);x--; py.addChild(box);
        cpt++;
      }
      for (int i = 0; i <= n-1; i++){
        img = a*allimages[cpt][1] + b*allimages[cpt][0] + c;
        box = cube(img); AV(box,x,y,z);z++; py.addChild(box);
        cpt++;
      }
      for (int i = 0; i <= n-1; i++){
        img = a*allimages[cpt][1] + b*allimages[cpt][0] + c;
        box = cube(img); D(box,x,y,z); x++; py.addChild(box);
        cpt++;
      }
      n++;
      y+=1;
    }
  return py;
}


// renvoi Pyramide avec spirale d'ulam 1-8

PShape Pyramid(int X){
  PShape py;
  py = createShape(GROUP);
  
  int x = 0; int y = 1; int z = 0;
  int n = 1;
  int cpt = 1;
  int img = aaa*allimages[cpt][1] + bbb*allimages[cpt][0] + ccc;
  PShape box = cube(img);
  py.addChild(box);
  cpt++;
  for(int j = 0; j < X-1; j++){
    img = aaa*allimages[cpt][1] + bbb*allimages[cpt][0] + ccc;
    box = cube(img);  D(box,x,y,z); x++; py.addChild(box);
    cpt++;
    for (int i = 0; i < n; i++){
      img = aaa*allimages[cpt][1] + bbb*allimages[cpt][0] + ccc;
      box = cube(img); AR(box,x,y,z); z--; py.addChild(box);
      cpt++;
    }
    for (int i = 0; i <= n; i++){
      img = aaa*allimages[cpt][1] + bbb*allimages[cpt][0] + ccc;
      box = cube(img); G(box,x,y,z);x--; py.addChild(box);
      cpt++;
    }
    for (int i = 0; i <= n; i++){
      img = aaa*allimages[cpt][1] + bbb*allimages[cpt][0] + ccc;
      box = cube(img); AV(box,x,y,z);z++; py.addChild(box);
      cpt++;

    }
    for (int i = 0; i <= n; i++){
      img = aaa*allimages[cpt][1] + bbb*allimages[cpt][0] + ccc;
      box = cube(img); D(box,x,y,z); x++; py.addChild(box);
      cpt++;
    }
    n+=2;
    y+=1; 
  }
  return py;
}
   
// renvoi spirale d'ulam sur un plan 3D

PShape SpiralUlam(int X){
  PShape spi;
  spi = createShape(GROUP);
  PShape box = cube(1);
  spi.addChild(box);
  int x = 0; int y = 0; int z = 0;
  int n = 1;
  int cpt = 2;
  for(int j = 0; j < X; j++){
    box = cube(cpt); D(box,x,y,z); x++; spi.addChild(box);
    cpt++;
    for (int i = 0; i < n; i++){
      box = cube(cpt); AR(box,x,y,z); z--; spi.addChild(box);
      cpt++;
    }
    for (int i = 0; i <= n; i++){
      box = cube(cpt); G(box,x,y,z);x--; spi.addChild(box);
      cpt++;
    }
    for (int i = 0; i <= n; i++){
      box = cube(cpt); AV(box,x,y,z);z++; spi.addChild(box);
      cpt++;

    }
    for (int i = 0; i <= n; i++){
      box = cube(cpt); D(box,x,y,z); x++; spi.addChild(box);
      cpt++;
    }
    n+=2;
  }
  return spi;
}
   

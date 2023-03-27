
// Translate cube
void D(PShape c,float x, float y, float z){  //DROITE
  c.translate((x+1)*ta,y*ta,z*ta);
}

void DAR(PShape c,float x, float y, float z){ //DOITE ARRIERE
  c.translate((x+0.5)*ta,y*ta,(z-0.5)*ta);
}

void G(PShape c,float x, float y, float z){ //GAUCHE
  c.translate((x-1)*ta,y*ta,z*ta);
}

void AV(PShape c,float x, float y, float z){ //AVANCE
  c.translate(x*ta,y*ta,(z+1)*ta);
}

void AR(PShape c,float x, float y, float z){ //ARRIERE
  c.translate(x*ta,y*ta,(z-1)*ta);
}

void H(PShape c,float x, float y, float z){ // HAUT
  c.translate(x*ta,(y-1)*ta,z*ta);
}

void B(PShape c,float x, float y, float z){ //BAS
  c.translate(x*ta,(y+1)*ta,z*ta);
}



//renvoi chiffre des dizaine d'un entier
int diz(int n){
  if ( n%10 == 0) {return 9;}
  else {return (n%10) -1;}
}



//somme des diviseurs 
int sd(int n){
   int acc = 0;
   for(int i = 1; i<= n; i++){
     if(n%i == 0) acc = acc + i;
   }
   return acc;
}

// renvoi couleur d'un entier en fonction de sa caractérisatiopn
color checkColor(int np){
  int n = abs(np);
  int sd1 = sd(n);
  if (sd1 == n + 1)  // Premier
      return #9d9d9d; //Gris
   else if (np == 0)
    return color(255);  
      
  else if (sd1 < 2*n) // Déficient
      return #cf0a1d; //Rouge
      
  else if (sd1== 2*n ) // Parfait
      return #3be2ff; //Bleu
      
  else if (sd(n) > 2*n) // Abondant
      return #dfaf2c; // Jaune
  else {return color(0);}
  
}

// return coordonnée x de la texture checkColor(cpt) (pour cpt >= 101 principalement)  
int testColor(int n){
  int cpt = abs(n);
  if(checkColor(cpt) == #9d9d9d){ return 2;}
  else if(checkColor(cpt) == #3be2ff){ return 1;}
  else if(checkColor(cpt) == #dfaf2c){ return 3;}
  else if(checkColor(n) == color(255)){ return 4;}
  else {return 0;}
}


void rotation(){
  fill(0);
  textSize(20);
  text("Rotate X Speed: "+((1/t)*10000000-1),400,40);
  text("Rotate Y Speed: "+((1/s)*10000000-1),400,80);
}

  

  
  

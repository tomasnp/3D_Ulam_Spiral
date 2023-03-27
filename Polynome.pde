int a = 0;
int b = 1;
int c = 0;

int aa = 0;
int bb = 1;
int cc = 0;

int aaa = 0;
int bbb = 1;
int ccc = 0;

void polynome1(){
  fill(128,0,0);
  textSize(20);text("+ : A",60,8); text("- : Q",61,62);text("Z",145,8); text("S",145,62); text("E",194,8); text("D",192,62);
  fill(0,0,255);
  textSize(30);
  text("f(x) = ",10,40);
  text(a+"x² +"+b+"x +"+c,80,40);
}

void polynome2(){
  fill(128,0,0);
  textSize(20);text("+ : I",760+42,8); text("- : K",761+42,62);text("O",845+38,8); text("L",845+40,62); text("P",894+42,8); text("M",894+38,62);
  fill(255,0,0);
  textSize(30);
  text("f(x) = ",750,40);
    
  //rect(80,2,15,15);rect(139,45,15,15);rect(139,2,15,15); rect(190,45,15,15); rect(190,2,15,15);
  text(aa+"x² +"+bb+"x +"+cc,820,40);
}

void polynome3(){
  fill(128,0,0);
  textSize(20);text("+ : F",60,430); text("- : V",61,474);text("G",143,430); text("B",143,474); text("H",192,430); text("N",192,474);
  fill(0,190,0);
  textSize(30);
  text("f(x) = ",10,455);
    
  text(aaa+"x² +"+bbb+"x +"+ccc,80,455);
}

int[][] images(int n){
  int[][] l = new int[n][2];
  for (int i = 0; i < n; i++){
    l[i][0] = i;
    l[i][1] = i*i;
  }
  return l;
}

boolean isMouseOver(int x, int y, int w, int h){
  if(mouseX >= x && mouseX <= x + w && mouseY >= y && mouseY <= y + h){
    return  true;
  }
  return false;
}

void mousePressed(){
  if(isMouseOver(80,2,15,15) == true){
    a=a+1;
    redraw();
  }
  else if(isMouseOver(80,45,15,15) == true){
    a=a-1;
    redraw();
  }
  else if(isMouseOver(139,2,15,15) == true){
    b=b+1;
    redraw();
  }
  else if(isMouseOver(139,45,15,15) == true){
    b=b-1;
    redraw();
  }
  else if(isMouseOver(190,2,15,15) == true){
    c=c+1;
    redraw();
  }
  else if(isMouseOver(190,45,15,15) == true){
    c=c-1;
    redraw();
  }
}

void keyPressed(){
  if(key == 'a'){
    a++;
    redraw();
  }
  else if(key == 'q'){
    a--;
    redraw();
  }
  else if(key == 'z'){
    b++;
    redraw();
  }
  else if(key == 's'){
    b--;
    redraw();
  }
  else if(key == 'e'){
    c++;
    redraw();
  }
  else if(key == 'd'){
    c--;
    redraw();
  }
  else if(key == 'i'){
    aa++;
    redraw();
  }
  else if(key == 'k'){
    aa--;
    redraw();
  }
  else if(key == 'o'){
    bb++;
    redraw();
  }
  else if(key == 'l'){
    bb--;
    redraw();
  }
  else if(key == 'p'){
    cc++;
    redraw();
  }
  else if(key == 'm'){
    cc--;
    redraw();
  }
  else if(key == 'f'){
    aaa++;
    redraw();
  }
  else if(key == 'v'){
    aaa--;
    redraw();
  }
  else if(key == 'g'){
    bbb++;
    redraw();
  }
  else if(key == 'b'){
    bbb--;
    redraw();
  }
  else if(key == 'h'){
    ccc++;
    redraw();
  }
  else if(key == 'n'){
    ccc--;
    redraw();
  }
  else if(keyCode == LEFT){
    s*=2.0;
    redraw();
  }
  else if(keyCode == RIGHT){
    s/=2.0;
    redraw();
  }
  else if(keyCode == DOWN){
    t*=2.0;
    redraw();
  }
  else if(keyCode == UP){
    t/=2.0;
  }
  else if(key == ' '){
    t=10000000.0;
    s=10000000.0;
  }
}

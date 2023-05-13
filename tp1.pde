//Lara Niggli 91414/1
//tp1

PImage tk;
PImage tki;
PImage f;
PImage f2;
PImage f3;
PImage f4;
String pantalla;
int tiempo;
float posy;
float posx;
int op, op2;
int tam;
int rt;
int parpadeo;
void setup() {
  size(640, 480);
  tk = loadImage("ticket.png");
  tki = loadImage("ticketinvertido.png");
  f= loadImage("mapa.jpg");
  f2= loadImage ("campanopolis.png");
  f3= loadImage("campanopolis2.jpg");
  f4= loadImage("campanopolis3.jpg");
  tk.resize(184, 131);
  tki.resize(184, 131);
  f.resize(640, 480);
  f2.resize(640, 480);
  f3.resize(640, 480);
  f4.resize(640, 480);
  pantalla = "1";
  tiempo = 0;
  posy = -30;
  posx = width*1.5;
  op = 0;
  op2 = 0;
  tam = 2;
  rt = 5;
  parpadeo=255;
}
void draw() {
  background(0);
  tiempo++;
  if (pantalla.equals("1")) {
    image(f, 0, 0);
    textSize(50);
    textAlign(CENTER);
    text("Campanópolis", width/2, posy);
    if (posy<=height/1.1) {
      posy+=3;
    }
  } else if (pantalla.equals("2")) {
    image(f2, 0, 0);
    fill(0, 200);
    rect(0, 0, 640, 480);
    fill(255, op);
    op++;
    textSize(25);  
    textAlign(CENTER);
    text("Es una aldea de \nestilo medieval soñada, proyectada \ny construida por Antonio Campana.\n Las Casas fueron hechas con materiales \nreciclados, abierto solo para \nvisitas guiadas.", width/2, height/3);
  } else if (pantalla.equals("3")) {
    op2++;
    image(f3, 0, 0);
    fill(0, 200);
    rect(0, 0, 640, 480);
    fill(255, op2);
    textSize(25);
    textAlign(CENTER);
    text("La historia cuenta que hace casi 40 años\n comenzó este proyecto en un predio\n adquirido en 1976 donde antes eran\n explotadas antiguas tosqueras.\n Campana no poseía estudios en arquitectura,\n pero sí el talento de un autodidacta.", posx, height/4);
    if (posx>width/2) {
      posx-=5;
    }
  } else if (pantalla.equals("4")) {
    image(f4, 0, 0);
    image(tki, width/3, height/1.6);
    fill(0, 170);
    rect(0, 0, 640, 480);
    image(tk, width/3, height/3.2);
    fill(0, 50);
    rect(0, 0, 640, 480);
    fill(0, 0);
    if (sobreBoton(width/3, height/3.5, 184, 131)) {
      fill(0, 70);
    }
    noStroke();
    rect(width/3, height/3.2, 184, 131);
    textSize(25);
    textAlign(CENTER);
    fill(255);
    text("Presione el ticket para reinciar", width/2, height/4);
  }

  if (tiempo < 200) {
    pantalla = "1";
  } else if (tiempo >=200 && tiempo <=600) {
    pantalla = "2";
  } else if (tiempo >=600 && tiempo <=1300) {
    pantalla = "3";
  } else if (tiempo >=1300) {
    pantalla = "4";
  }
}
void mousePressed() {
  if (pantalla=="4" && sobreBoton(width/3, height/3.5, 184, 131)) {
    pantalla = "1";
    tiempo = 0;
    posy = -30;
    posx = height*1.5;
    op = 0;
    op2 = 0;
    tam = 2;
    rt = 5;
  }
}

boolean sobreBoton(int px, float py, int ancho, int alto) {
  boolean estoySobre = mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto;
  return estoySobre;
}

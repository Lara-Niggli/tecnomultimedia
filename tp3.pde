//TP3
//Niggli Lara 91414/1
//https://youtu.be/xrs69k-DBUc

//presionando Enter el juego se reinicia

//variables PJ
int cantPJ = 3;
int ordenPJ;
PImage [] PJ = new PImage [cantPJ];
int tamxpj= 44;
int tamypj= 50;
float playery= 260;
float playerx= 280;
int playerSpeed= 4;

//variables Coins
int ordenCoin;
int cantCoin=6;
float [][]coinPos = new float [3] [2];
PImage [] Coin = new PImage[cantCoin];

//variables Saw
int cantSaw = 14;
int px1 = 60;
int py1=60;
int px2=60;
int py2=60;
float px3, px4, px5;
float py3, py4, py5;
float velx3=5;
float vely3=5;
int velx4=5;
int vely4=5;
int velx5=5;
int vely5=5;
float velocidad=5.5;
int orden;
int rebote = 0;
int rebote1 = 0;

int estado;
int ordenpin;
int cantpin=63;
PImage [] Pin = new PImage [cantpin];
PImage [] Saw = new PImage[cantSaw];
PFont Font;
PImage Fondo;
boolean keyLeft, keyRight, keyUp, keyDown;

void setup() {
  size(600, 600);
  Fondo = loadImage("Fondo.png");

  for (int i=0; i<cantPJ; i++) {
    PJ[i] = loadImage("PJYD"+i+".png");
  }
  for (int i=0; i<cantSaw; i++) {
    Saw[i] = loadImage("Saw"+i+".png");
  }
  for (int i=0; i<cantCoin; i++) {
    Coin[i] = loadImage("coin"+i+".png");
  }
  for (int i=0; i<1; i++) {
    coinPos[i][0] = random(60, 465);
    coinPos[i][1] = random(60, 465);
  }
  for (int i=0; i<cantpin; i++) {
    Pin[i] = loadImage("pingu"+i+".png");
  }

  Font = createFont("RetroGaming.ttf", 40);
  textFont(Font);

  px3 = random(60, 465);
  py3 = random(60, 465);
  px4 = random(60, 465);
  py4 = random(60, 465);
  px5 = random(60, 465);
  py5 = random(60, 465);
}
void draw() {
  println(frameCount);
  image(Fondo, 0, 0, 600, 600);

  estados();

  if (playerx>=width-60-38) {
    playerx=width-60-38;
  }
  if (playerx<60) {
    playerx=60;
  }
  if (playery>=height-60-45) {
    playery=height-60-45;
  }
  if (playery<60) {
    playery=60;
  }

  if (estado==1||estado==2) {
    sawconPatron();
    sawRandom();
  }
}
void estados () {
  if (estado==0) {
    textAlign(CENTER);    
    fill(0, 0, 0, 150);
    rect(0, 0, 600, 600);
    fill(200, 0, 0);
    textSize(70);
    text("Doom Room", width/2, height/2);
  } else if (estado==1) {
    fill(0, 0, 0, 200);
    rect(0, 0, 600, 600);
    fill(0, 0);
    stroke(200, 0, 0);
    rect(280, 260, 40, 40);
    fill(150, 0, 0, 225);
    textSize(15);
    text("cuantas más\n monedas agarres\nmás sierras apareceran", 140, 250);
    textSize(23);
    fill(255, 0, 0, 255);
    text("El cuadrado rojo marca\n donde aparecerás\nprocura no empezar sobre\n una sierra", width/2, 350);
    text("Agarra 10 monedas para ganar\n y esquiva las sierras \npara evitar morir", width/2, 100);
    textSize(40);
    text("[Presiona Enter]", width/2, 520);
  } else if (estado==2) {
    jugador();
    coins();
    fill(200, 200, 2); 
    textSize(30);
    text(cantidadCoin, 420, 50);
    text("Coins: ", 350, 50);
    for (int i=0; i<1; i++) {
      if (contacto( coinPos[i][0], coinPos[i][1], playerx, playery, tamxpj, tamypj)) {
        coinPos[i][0] = random(60, 465);
        coinPos[i][1] = random(60, 465);
        cantidadCoin++;
      }
    }
    if (cantidadCoin>=4) {
      sawRandom1();
      if (contacto(px4, py4, playerx, playery, tamxpj, tamypj)) {
        estado=4;
      }
    }
    if (cantidadCoin>=7) {
      sawRandom2();
      if (contacto(px5, py5, playerx, playery, tamxpj, tamypj)) {
        estado=4;
      }
    }

    if (cantidadCoin==10) {
      estado=3;
    }

    if (contacto(px1, py1, playerx, playery, tamxpj, tamypj)||contacto(px2, py2, playerx, playery, tamxpj, tamypj)||contacto(px3, py3, playerx, playery, tamxpj, tamypj)) {
      estado=4;
    }
  } else if (estado==3) {
    if (frameCount%6==0) {
      ordenpin++;
      ordenpin = ordenpin%cantpin;
    }
    tint(100);
    image(Pin[ordenpin], 0, 0, 600, 600);
    textSize(80);
    fill(0, 200, 0);
    text("Ganaste", width/2, height/2);
    textSize(50);
    text("[Pulsa Enter]", width/2, height/2+150);
  } else if (estado==4) {
    fill(200, 0, 0, 70);
    rect(0, 0, 600, 600);
    fill(200, 0, 0);
    textSize(70);
    text("Game Over", width/2, height/2, 100 );
    textSize(50);
    text("[Pulsa Enter]", width/2, height/2+150);
  }
}
void jugador () {

  //JUGADOR
  if (keyLeft) { 
    playerx -= 5;
    if (frameCount%4==0) {
      ordenPJ++;
    }
  }
  if (keyRight) { 
    playerx += 5;
    if (frameCount%4==0) {
      ordenPJ++;
    }
  }
  if (keyUp) {
    playery -= 5;
    if (frameCount%4==0) {
      ordenPJ++;
    }
  }
  if (keyDown) { 
    playery += 5;
    if (frameCount%4==0) {
      ordenPJ++;
    }
  }

  ordenPJ = ordenPJ%cantPJ;


  image(PJ[ordenPJ], playerx, playery, tamxpj, tamypj);
}
int cantidadCoin;
void coins () {
  if (frameCount%6==0) {
    ordenCoin++;
    ordenCoin = ordenCoin%cantCoin;
  }
  for (int i=0; i<1; i++) {
    image(Coin[ordenCoin], coinPos[i][0], coinPos[i][1], 34, 32);
  }
}
void sawconPatron() {

  if (frameCount%6==0) {
    orden++;
    orden = orden%cantSaw;
  }
  if (rebote == 0) {
    px1 += velocidad;
    if (px1 > width-135) {
      rebote = 1;
    }
  } else if (rebote == 1) {
    py1 += velocidad;
    if (py1 >height-135) {
      rebote = 2;
    }
  } else if (rebote == 2) {
    px1 -= velocidad;
    if (px1 < 60) {
      rebote = 3;
    }
  } else if (rebote == 3) {
    py1 -= velocidad;
    if (py1<60) {
      py1=60;
      rebote = 0;
    }
  }

  if (rebote1 == 0) {
    py2 += velocidad;
    if (py2==465) {
      rebote1 = 1;
    }
  } else if (rebote1 == 1) {
    px2 += velocidad;
    if (px2>465) {
      rebote1 = 2;
    }
  } else if (rebote1 == 2) {
    py2 -= velocidad;
    if (py2 < 60) {
      rebote1 = 3;
    }
  } else if (rebote1 == 3) {
    px2 -= velocidad;
    if (px2<60) {
      py2=60;
      rebote1 = 0;
    }
  }
  ellipseMode(CORNER);
  noStroke();
  fill(0, 0, 0, 0);
  ellipse(px1, py1, 70, 70);
  ellipse(px2, py2, 70, 70);
  image(Saw[orden], px1, py1, 70, 70);
  image(Saw[orden], px2, py2, 70, 70);
}

void sawRandom() {
  if ( px3 >= 465) {
    velx3 -= 2;
  }
  if (px3 <= 60) {
    velx3 += 2;
  }
  if (py3 >= 465) {
    vely3 -= 2;
  }
  if (py3 <= 60) {
    vely3 += 2;
  }
  px3 = px3+velx3;
  py3 += vely3;
  noStroke();
  fill(0, 0, 0, 0);
  ellipse(px3, py3, 70, 70);
  image(Saw[orden], px3, py3, 70, 70);
}
void sawRandom1() {

  if ( px4 >= 465) {
    velx4 -= 2;
  }
  if (px4 <= 60) {
    velx4 += 2;
  }
  if (py4 >= 465) {
    vely4 -= 2;
  }
  if (py4 <= 60) {
    vely4 += 2;
  }
  px4 = px4+velx4;
  py4 += vely4;
  noStroke();
  fill(0, 0, 0, 0);
  ellipse(px4, py4, 70, 70);
  image(Saw[orden], px4, py4, 70, 70);
}
void sawRandom2() {

  if ( px5 >= 465) {
    velx5-= 2;
  }
  if (px5 <= 60) {
    velx5 += 2;
  }
  if (py5 >= 465) {
    vely5 -= 2;
  }
  if (py5 <= 60) {
    vely5+= 2;
  }
  px5 = px5+velx5;
  py5 += vely5;
  ellipse(px5, py5, 70, 70);
  image(Saw[orden], px5, py5, 70, 70);
}


boolean contacto(float bx, float by, float nx, float ny, float tamx, float tamy) {
  float distan = dist(bx, by, nx, ny);
  return distan < tamx;
}
void keyPressed() {
  if (keyCode == UP) {
    keyUp = true;
  }
  if (keyCode == DOWN) {
    keyDown = true;
  }
  if (keyCode == LEFT) {
    keyLeft = true;
  }
  if (keyCode == RIGHT) {
    keyRight = true;
  }
  if ( estado < 2) {
    if (keyCode == ENTER) {
      estado++;
    }
  } else if (estado==3 || estado==4) {
    if (keyCode==ENTER) {
      estado=0;
      cantidadCoin=0;
      playery= 260;
      playerx= 280;
      px3 = random(60, 465);
      py3 = random(60, 465);
      px4 = random(60, 465);
      py4 = random(60, 465);
      px5 = random(60, 465);
      py5 = random(60, 465);
      tint(255);
    }
  }
}

void keyReleased() {
  if (keyCode == UP) {
    keyUp = false;
  }
  if (keyCode == DOWN) {
    keyDown = false;
  }
  if (keyCode == LEFT) {
    keyLeft = false;
  }
  if (keyCode == RIGHT) {
    keyRight = false;
  }
}

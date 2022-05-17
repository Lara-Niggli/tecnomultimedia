//Lara Niggli N° Legajo 91414/1
//tp1

PImage Fondo;
PImage Crash;
PImage OfThe;
PImage Titans;
PImage Huella;
PImage HuellaR;
PImage HuellaD;
PImage HuellaAbajoL;
PImage HuellaAbajoR;
PImage HuellaAR;
PImage HuellaAL;
PImage CrashSilueta;
PImage Magmadon;
PImage AkuAku;
color Color;
PFont Fuente;
int direccion=1;
int Tono=0; 
int Tono2=0;
int Tono3=0; 
int Tono4=0;
int Tono5=0; 
int Tono6=0;
int Tono7=0;
int Tono8=0;
int TonoA=0;
int TonoC=0;
int TonoM=0;
int py=-230;
int py2=230;
int df=0;

void setup () {
  Fondo = loadImage("Fondomenu.jpg");
  Crash = loadImage("Titulo-Crash.png");
  OfThe = loadImage("Titulo-OfThe.png");
  Titans=loadImage("Titulo-Titans.png");
  Huella = loadImage("Huella.png");
  HuellaD = loadImage("HuellaDiag.png");
  HuellaR = loadImage("HuellaDerecha.png");
  HuellaAbajoL = loadImage("HuellaAbajoIzq.png");
  HuellaAbajoR = loadImage("HuellaAbajoDer.png");
  HuellaAR = loadImage("HuellaArribaDer.png");
  HuellaAL = loadImage("HuellaArribaIzq.png");
  AkuAku = loadImage("AkuAkuSilueta.png");
  CrashSilueta = loadImage("CrashSilueta.png");
  Magmadon = loadImage("MagmadonSilueta.png");
  Fuente = createFont("TitanicalMutant.otf", 32);
  textFont(Fuente);
  size (683, 384);
}

void draw () {
  println(mouseX, mouseY);
  background(0);
  if (frameCount >10 && frameCount< 420) {
    if (frameCount %7==0) {
      Tono += 1 * direccion;
    }
    if (frameCount >55) {
      tint(255, Tono);
      image(Huella, 425, 295, 150, 162);
    }
    if (frameCount >110) {
      tint(255, Tono);
      image(Huella, 400, 200, 150, 162);
    }
    if (frameCount >165) {
      tint(255, Tono);
      image(Huella, 475, 145, 150, 162);
    }
    if (frameCount >220) {
      tint(255, Tono);
      image(Huella, 450, 50, 150, 162);
    }
    if (frameCount >275) {
      tint(255, Tono);
      image(Huella, 520, -25, 150, 162);
    }
    if (frameCount >330) {
      tint(255, Tono);
      image(Huella, 460, -95, 150, 162);
    }

    if (frameCount%5==0) {
      Tono += 3 * direccion;
    }
    textSize(55);
    fill(255, Tono);
    text("Developers:", 45, 75);
    textSize(40);
    text("Radical Entertainment", 45, 120);
    text("SuperVillain Studios", 45, 155);
    text("Amaze Entertainment", 45, 190);

    if (frameCount >200) {
      if (frameCount%1==0) {
        Tono2 += 1 * direccion;
      }
      textSize(55);
      fill(255, Tono2);
      text("Publisher:", 45, 270);
      textSize(40);
      text("Vivendi Games", 45, 310);
    }
  }

  if (frameCount>420 && frameCount<840) {
    if (frameCount>490) {
      if (frameCount%6==0) {
        TonoA+=1*direccion;
      }
      tint(75, TonoA);
      image(AkuAku, 180, 20, 250, 350);
    }
    tint(255);
    if (frameCount > 480) {
      image(HuellaAbajoL, 160, -80 );
    }
    if (frameCount > 535) {
      image(HuellaAbajoL, 75, -30);
    }
    if (frameCount > 590) {
      image(HuellaAbajoL, 100, 55);
    }
    if (frameCount > 645) {
      image(HuellaAbajoL, 15, 115);
    }
    if (frameCount > 700) {
      image(HuellaAbajoL, 40, 200);
    }
    if (frameCount >755) {
      image(HuellaAbajoL, -50, 235);
    }
    if (frameCount >810) {
      image(HuellaAbajoL, -10, 320);
    }
    if (frameCount%1==0) {
      Tono3 += 1 * direccion;
    }
    textSize(55);
    fill(255, Tono3);
    text("Programmers:", 400, 50);
    textSize(40);
    text("Ryan Ridout", 400, 90);
    text("Ian Gipson", 400, 125);
  }
  if (frameCount>840 && frameCount<1260) {
    if (frameCount>900) {
      if (frameCount %6==0) {
        TonoM +=1+direccion;
      } 
      tint(75, TonoM);
      image(Magmadon, 390, 50, 300, 350);
    }
    if (frameCount>880) {
      tint(255);
      image(HuellaR, -80, 80);
    }
    if (frameCount>930) {
      image(HuellaR, 0, 120);
    }
    if (frameCount>980) {
      image (HuellaR, 90, 80);
    }
    if (frameCount>1035) {
      image(HuellaR, 170, 120);
    }
    if (frameCount>1090) {
      image(HuellaAR, 220, 40);
    }
    if (frameCount>1145) {
      image (HuellaAR, 310, 20);
    }
    if (frameCount>1200) {
      image (Huella, 290, -60);
    }
    if (frameCount%1==0) {
      Tono4 += 1 * direccion;
    }
    textSize(55);
    fill(255, Tono4);
    text("Composer:", 50, 280);
    textSize(40);
    text("Marc Baril", 50, 320);
    text("Nathaniel Papadakis", 50, 355);
  } 
  if (frameCount >1260 && frameCount<1680)
  {
    if (frameCount >1290)
    {
      if (frameCount%5==0) {
        TonoC += 1 * direccion;
      }
      imageMode(CENTER);
      tint(75, TonoC);
      image(CrashSilueta, width/2, height/2+20, 220, 370);
    }
    imageMode(CORNER);
    tint(255);
    if (frameCount>1270) {
      image (HuellaAbajoR, 330, -80);
    }
    if (frameCount>1370) {
      image (HuellaAbajoR, 420, -25);
    }
    if (frameCount>1420) {
      image (HuellaAbajoR, 400, 65);
    }
    if (frameCount>1520) {
      image (HuellaD, 520, 70);
    }
    if (frameCount>1570) {
      image (HuellaD, 550, 170);
    }
    if (frameCount>1620) {
      image (HuellaR, 630, 130);
    }
    if (frameCount %1==0) {
      Tono5 += 1 * direccion;
    }
    fill(255, Tono5);
    textSize(55);
    textAlign(CENTER, BOTTOM);
    text("Designer:", 120, 80); 
    text("Artist:", 120, 330);
    text("Writer:", 570, 330);
    textSize(40);
    text("Joe McGinn", 120, 110);
    text("Yousuf Mapara", 120, 360);
    text("Chris Mitchell", 570, 360);
  }
  
  textAlign(LEFT);
  imageMode(CORNER);
  if (frameCount >1680) { 
    if (frameCount%1==0) {
      Tono6 += 10 * direccion;
    }
    tint(255, Tono6);
    image(Fondo, 0, 0, 683, 384);
    if (frameCount>1750) {
      if (frameCount %1==0) {
        Tono7 += 1 *direccion;
      }
      if (frameCount %1==0) {
        py+=3;
        py2-=3;
      }
      if (py>=0) {
        py=0;
      }
      if (py2<=0) {
        py2=0;
      }
    }
    image(Crash, 0, py, 683, 384);
    image(Titans, 0, py2, 683, 384);
    tint(255, Tono7);
    image(OfThe, 0, 0, 683, 384);

    if (frameCount>1890) {
      if (frameCount %1==0) {
        df += 4* direccion;
      }
      tint(100, df);
      noStroke();
      rect(290, 310, 100, 50, 8);
      textSize(25);
      fill(170, 10, 10, df);
      text("RESTART", 300, 345);

      if (sobreBoton(290, 310, 100, 50)==true) {
        fill(120, 0, 0, df);
      } else {
        fill(75, 0, 0, df);
      }
    }
  }
}
void mousePressed() {
  if (frameCount>1890) {
    if (sobreBoton(290, 310, 100, 50)) {
      frameCount=0;
      Tono=0; 
      Tono2=0;
      Tono3=0; 
      Tono4=0;
      Tono5=0; 
      Tono6=0;
      Tono7=0;
      TonoA=0;
      Tono8=0;
      TonoM=0;
      py=-230;
      py2=230;
      df=0;
    }
  }
}
boolean sobreBoton(int px, int py, int ancho, int alto) {
  boolean estoySobre = mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto;
  return estoySobre;
}

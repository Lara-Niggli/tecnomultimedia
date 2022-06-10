//Lara Niggli
//Numero de Legajo 91414/1
//https://www.youtube.com/watch?v=C9SlY1KT8D4

float angle;

void setup() {
  size(500, 500);
  rectMode(CENTER);
  mouseX=width*2;
}
void draw() {
  background(50);
  rect(width/2, 450, 80, 50, 7);
  fill(255);
  textSize(16);
  text("RESTART", 216, 455);

  translate(width/2, height/2-40);
  float rotar =map(mouseX, 0, width, 0, 20);
  for (int j=0; j<50; j++) {
    fill(j*10, 20-j*10, 200-j*10);
    scale(0.95); 
    rotate(radians(rotar));
    rect(0, 0, 400, 350);
    
    if (sobreBoton(210, 425, 50, 50)==true) {
      fill(70, 0, 10);
    } else {
      fill(150, 10, 0);
    }
  }
}

void mousePressed() {
  if (sobreBoton(210, 425, 80, 50)) {
    mouseX=width*2;
  }
}
boolean sobreBoton(int px, int py, int ancho, int alto) {
  boolean estoySobre = mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto;
  return estoySobre;
}

//Bugiolachi, José
//Tp0, Fiugras

void setup() {
  size(500, 500);
}

void draw() {
  background(141, 113, 255);
  quad(100, 300, 400, 300, 350, 370, 150, 370);
  rect(240, 100, 30, 200);
  triangle(240, 110, 120, 165, 240, 220);
  ellipse(255, 335, 30, 30);
  ellipse(200, 335, 30, 30);
  ellipse(310, 335, 30, 30);
  println(mouseX, mouseY);
}

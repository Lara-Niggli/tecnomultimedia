//Lara Niggli 91414/1
//tp0

size(800, 400);
PImage paisaje = loadImage("paisaje.jpg");
PImage grilla = loadImage("grilla.png");

background(60, 60, 150);
image(paisaje, 0, 0, 400, 400);
image(grilla, 0, 0);
noStroke();
ellipse(600, 200, 320, 255);
fill(255,200,10,170);
ellipse(580,200,280,245);
fill(60,60,150);
rect(400,300,400,400);
fill(10,10,40);
rect(400,250,400,50);
rect(400,240,150,10);
triangle(500,250,550,230,630,250);
fill(5,5,16);
quad(800,280,580,340,580,360,800,450);
triangle(580,360,580,320,600,340);
triangle(590,340,610,305,620,340);
triangle(620,330,630,300,640,330);
triangle(630,330,640,300,650,330);
triangle(650,330,660,300,670,330);
triangle(660,330,670,300,680,330);

image(grilla, 400, 0);

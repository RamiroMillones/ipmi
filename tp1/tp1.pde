//Ramiro Millones
//tp1 comision 1
PImage fondo;
void setup() {
 size(800, 400);
 
 background(255);
 
 fondo = loadImage("gatoprocessing.jpg");
 
 image(fondo, 0 ,0 ,400 ,400);

 
 }
void draw() {
 println("X:");
 
 println(mouseX);
 
 println("Y:");
 
 println(mouseY);
 
 fill(500, 150, 0);
 
 ellipse(561, 354, 180, 250);
 
 triangle (501, 44, 465, 129, 527, 127);
 
 triangle(629, 44, 588, 129, 660, 127);
 
 circle(568, 200, 200);
 
 fill(171, 235, 198);
 
 circle(524, 172, 50);
 
 circle(610, 172, 50);
 
 fill(0);
 
 circle(522, 172, 25 );
 
 circle(610, 172, 25);
 
 line(540, 267, 560, 252);
 
 line(560,253, 574, 269);
 
 line(560, 252, 560, 236);
 
 line(582, 244, 606, 238);
 
 line(582, 255, 606, 257);
 
 line(525, 238, 543, 242);
 
 line(520, 253, 537, 254);
 
 
 }
 
 

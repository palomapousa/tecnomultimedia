/* 
 Tecnología Multimedial I
 Comisión 1
 Alumno: Paloma Pousa
 Legajo: 88138/5
 Docente: José Luis Bugiolachi
 Video de youtube: https://youtu.be/N9H_XTaYm8M 
 
 Insipiración: https://www.cibermitanios.com.ar/2015/05/ilusiones-opticas-interactivas.html
*/
color pb = color (255); 
color pn = color (0);   
int paso = 0;
int paso2 = 0;
int direc =1;
boolean seMueve;

void setup() {
  size(800, 500);
  background(0);
  noStroke();
  seMueve = false;
  textSize(14);
}

void draw() {
  background (0);
  //líneas ralladas 
  for (int x=0; x<20; x++) {
    fill (255);
    rect(60*x, 0, 30, height-100);
  }
  //pasos
  fill(pn);
  rect(paso, 250, 100, 50);
  fill (pb);
  rect(paso2, 100, 100, 50);

  //botón encendido
  fill (0, 255, 0);
  rect (50, 420, 100, 50);
  fill(255);
  text("Encendido", 65, 450);

  //botón apagado
  fill (255, 0, 0);
  rect (200, 420, 100, 50);
  fill(255);
  text("Apagado", 220, 450);

  //botón reinicio
  fill(0, 0, 255);
  circle(370, 445, 50);
  fill(255);
  text("R", 366, 450);

  //botón color
  fill (120, 40, 140);
  rect (650, 420, 100, 50);
  fill(255);
  text("Colorear", 670, 450);

  // movimiento inicial
  if (seMueve==true) {
    paso=paso+direc;
    paso2=paso2+direc;
  }    
  //rebote
  if (paso >=700 && paso2 >= 700) {
    direc = direc*-1;
  }
  if (paso <=-1 && paso2 <=-1) {
    direc = direc*-1;
  }
}

void mousePressed() {  
  //botón de encendido
  if (mouseX > 50 && mouseX<150 && mouseY>415 && mouseY<470) {
    seMueve=true;
  }
  //botón de apagado
  if (mouseX > 200 && mouseX<300 && mouseY>415 && mouseY<470) {
    seMueve=false;
  }
  //botón colorear
  if (mouseX > 650 && mouseX<750 && mouseY>415 && mouseY<470) {
    pb = color (random(85, 110), random(185, 210), random(175, 210));
    pn = pb;
  }
  //botón de reinicio
  if (dist(mouseX, mouseY, 370, 445)<25) {
    paso =0;
    paso2 =0;
    direc =1;
    pb = color (255);
    pn = color (0);
  }
}

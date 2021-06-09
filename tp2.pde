/*

Tecnología Multimedial I
Comisión I
Pousa Paloma

*/
PImage titulo, shrek, princesa, burro, gato, reyyreina, principe, hada, varita;
int pty, pty2, piy, pcy,pry,pry2;
PFont creditos;
/*
pty y pty2 == posición de títulos en eje y 
 piy == posición de imágenes en el eje y 
 pcy == posición de creditos en el eje y
 
 Aclaración: la imagen de varita que utilicé en el cursor hace referencia 
 a la varita mágica del hada madrina que resulta crucial a lo largo
 de la película.
 */

void setup () {
  size (800, 600);
  varita = loadImage ("varita.png"); // Imagen del cursor
  titulo =loadImage ("titulo.png");
  shrek = loadImage ("shrek.png");
  burro = loadImage ("donkey.png");
  princesa = loadImage ("princesa.png");
  gato = loadImage("gato.png");
  hada = loadImage("hada.png");
  principe = loadImage("principe.png");
  reyyreina = loadImage("reinayrey.png");

  creditos= loadFont("ARJULIAN-50.vlw");

  pty = 600;
  pty2 =800;
  piy= 1400;
  pcy = 5800;
  pry = int(random(6000,6200));
  pry2 = int(random(6000,6200));

  frameRate(24);
  smooth();
  noCursor();
}

void draw () {
  background(0);

  image (titulo, 100, pty, 600, 600);
  textAlign(CORNER);
  textFont(creditos);
  textSize(20);
  fill(255);
  text ("A film from Dreamworks Studio", 265, pty2, 40);

  if (pty <= 0 && pty2<= 0 && piy>-700*5-hada.height/2) {
    textFont(creditos);   
    textSize(50);
    fill(255);
    image(shrek, 0, piy);               
    text("Mike", 100, piy+140, 50);
    text("Myers", 100, piy+200, 50);

    image(burro, 0, piy+550);
    text ("Eddie", 530, piy+1000, 50);
    text("Murphy", 530, piy+1060, 50);

    image(princesa, 0, piy+550*2);
    text ("Cameron", 80, piy+620*2, 50);
    text("Diaz", 80, piy+650*2, 50);

    image(gato, 0, piy+550*3);
    text("Antonio", 100, piy+590*3, 50);
    text("Banderas", 100, piy+650*3, 50);

    image(reyyreina, 0, piy+550*3);
    text("Julie", 120, piy+700*3, 50);
    text("Andrews", 120, piy+715*3, 50);
    text ("John", 500, piy+600*3, 50);
    text("Cleese", 500, piy+615*3, 50);

    image(gato, 0, piy+550*4);
    text("Antonio", 100, piy+650*4, 50);
    text("Banderas", 100, piy+662*4, 50);

    image(principe, 0, piy+550*5);
    text("Rupert", 60, piy+635*5, 50);
    text ("Everett", 60, piy+645*5, 50);

    image(hada, 0, piy+550*6);
    text("Jennifer", 120, piy+630*6, 50);
    text("Saunders", 120, piy+640*6, 50);
    
  } else {

    fill(255);
    textSize(18);
    textAlign(CENTER);

    // directed by
    text("Directed by", 250, pry, 50);
    textSize(15);
    text("Andrew Adamson", 250, pry+30, 50);
    text("Kelly Asbury", 250, pry+60, 50);
    text("Conrad Vernon", 250, pry+90, 50);  

    //produced by
    textSize(18);
    text("Produced by",550, pry2, 50);
    textSize(15);
    text("Aron Warner", 550, pry2+30, 50);
    text("David Lipman", 550, pry2+60, 50);
    text("John H. Williams", 550, pry2+90, 50);
    
    if (pry<=0 || pry2<=0 ){

    //music by
    textSize(18);
    text("Music by", width/2, pcy+800, 50);
    textSize(15);
    text("Harry Gregson-Williams", width/2, pcy+825, 50);
    }
  }  

  image(varita, mouseX, mouseY, 50, 50);

  if (mousePressed) {

    pty = 600;
    pty2 =800;
    piy= 1400;
    pcy = 5800;
    pry = int(random(6000,6200));
    pry2 = int(random(6000,6200));
  }

  pty=pty-3;
  pty2=pty2-3;
  piy=piy-3;
  pcy=pcy-3;
  pry=pry-3;
  pry2=pry2-3;
}

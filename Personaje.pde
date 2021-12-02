class Jugador {

  float x, y, vel = 4;
  boolean izq=false, der=false;
  float ang;
  PImage mujer;


  Jugador(float posx, float posy) {
    x = posx;
    y = posy;
    ang = 0;
    mujer = loadImage ("mujer.png");
  }

  void dibujar() {
    push();
    pushMatrix();
    translate(x, y);
    rotate(radians(ang));
    circle(0, 0, 30);
    rect(0-5, 0-25, 10, 25);
    imageMode(CORNER);
    image(mujer, 0-22, 0-60);
    popMatrix();
    pop();
  }

  boolean colision(float posx, float posy, float dist) {
    if (dist(x, y, posx, posy)<=dist) {
      return true;
    } else {
      return false;
    }
  }

  boolean cuchillazo(Enemigo marido) {
    if (colision(marido.px, marido.py, 70)) {
      return true;
    } else {
      return false;
    }
  }

  void mover(String direc) {
    if (direc.equals("none")) {
      //IDLE
    } else if (direc.equals("derecha")) {
      x+=vel;
    } else if (direc.equals("izquierda")) {
      x-=vel;
    } else if (direc.equals("arriba")) {
      y-=vel;
    } else if (direc.equals("abajo")) {
      y+=vel;
    }
  }
}

class Enemigo {
  float velx =4;
  float vely =4;
  float tam;
  float px = random(tam/2, width-tam/2);
  float py = random(tam/2, height-tam/2);
  float vida = 8;
  float marcaTiempo, tiempoPartida;
  PImage hombre;

  Enemigo(float posX, float posY, float tm) {
    px=posX;
    tam=tm;
    py=posY;
    hombre = loadImage ("hombre.png");
  }

  void dibujar () {
    push();
    circle(px, py, tam);
    imageMode(CORNER);
    image(hombre, px-20, py-60);
    pop();
  }

  void tiempo() {
    tiempoPartida = millis()-marcaTiempo;
    if (velx>0) {
      velx += tiempoPartida/9000000;
    } else {
      velx -= tiempoPartida/9000000;
    }
    if (vely>0) {
      vely += tiempoPartida/9000000;
    } else {
      vely -= tiempoPartida/9000000;
    }
  }

  void mover(Jugador juan) {
    if (px>width-tam/2 || px<tam/2 || juan.colision(px, py, 30)) {
      velx *=-1;
    }
    if (py > height-tam/2 || py<tam/2 || juan.colision(px, py, 30)) {
      vely *= -1;
    }
    px += velx;
    py += vely;
  }
}

class Juego {
  Jugador Player;
  Enemigo Esposo;
  Botones boton;
  boolean ar = false, ab = false, iz = false, de = false;
  boolean jugando = false;
  PImage[] gif;
  int contador = 0;
  String [] reglas;

  Juego () {
    Player = new Jugador(width/2, height/2);
    Esposo = new Enemigo (width/2-200, height/2-200, 30);
    boton = new Botones ();
    gif = new PImage [16];
    for (int f = 0; f<16; f++) {
      gif[f] = loadImage ("cat_"+nf(f, 2)+"_delay-0.03s.jpg");
    }
    reglas = loadStrings ("reglas.txt");
  }

  void dibujarJuego() {
    if (jugando) {
      if (victoria()) { 
        Esposo.px=-width;
        Esposo.py=-height;
        Player.x=-width*2;
        Player.y=-height*2;
        push();
        textSize(50);
        textAlign(CENTER);
        text("Ganaste", width/2, height/4-20);
        push();
        imageMode(CORNER);
        image(gif[contador%16], width/4-40, height/4);
        pop();
        boton.dibujarBoton("Volver a Jugar", color(255, 0, 0), 20, 120, height-69);
        if (frameCount%2 ==1) {
          contador++;
        }
        if (mousePressed && boton.mouseOver() && victoria()) {
          jugando = false;
          Esposo.vida = 8;
          mousePressed = false;
        } 
        pop();
      } else if (derrota()) { 
        Esposo.px=-width;
        Esposo.py=-height;
        Player.x=-width*2;
        Player.y=-height*2;
        push();
        textSize(50);
        textAlign(CENTER);
        text("Perdiste", width/2, height/2);
        boton.dibujarBoton("Volver a Jugar", color(255, 0, 0), 20, 120, height-69);
        if (mousePressed && boton.mouseOver() && derrota()) {
          jugando = false;
          Esposo.vida = 8;
          mousePressed = false;
        } 
        pop();
      } else {
        Player.dibujar();
        Esposo.dibujar();
        Esposo.mover(Player);
        Esposo.tiempo();
      }
    } else {
      inicio();
    }
  }

  void inicio() {
    push();
    fill(255);
    textSize(32);
    text ("El gato negro", width/2-100, 70);
    pop();
    text(reglas[0], 60, 120);
    text(reglas[1], 60, 140);
    text(reglas[2], 60, 160);
    text(reglas[3], 60, 180);
    text(reglas[4], 60, 200);
    text(reglas[5], 60, 220);
    text(reglas[6], 60, 240);
    text(reglas[7], 60, 260);
    text(reglas[8], 60, 280);
    text(reglas[9], 60, 300);
    boton.dibujarBoton("Jugar", color(255, 0, 0), 20, 120, height-69);
    if (mousePressed && boton.mouseOver() && !victoria() && !derrota()) {
      jugando = true;
      Esposo.px=(width/2-200);
      Esposo.py=(height/2-200);
      Player.x= width/2;
      Player.y= height/2;
      Esposo.marcaTiempo = millis();
    } else {
      jugando = false;
    }
  }

  boolean derrota () {
    if (Esposo.tiempoPartida > 40*1000) {
      return true;
    } else {
      return false;
    }
  }

  boolean victoria () {
    if (Esposo.vida == 0) {
      return true;
    } else {
      return false;
    }
  }

  void moverPersonaje() {
    if (keyPressed) {
      if (ar) {
        Player.mover("arriba");
      }
      if (ab) {
        Player.mover("abajo");
      }
      if (de) {
        Player.mover("derecha");
      }
      if (iz) {
        Player.mover("izquierda");
      }
    }

    if (Player.cuchillazo(Esposo)) {
      push();
      fill(255, 0, 0);
      circle(50, 50, 20);
      pop();
    }
    text(Esposo.vida, 80, 50);
  }


  void moverJugador() {
    if (keyCode==UP) {
      ar = true;
    }
    if (keyCode==DOWN) {
      ab = true;
    }
    if (keyCode==LEFT) {
      iz = true;
    }
    if (keyCode==RIGHT) {
      de = true;
    }
    if (keyCode==ENTER) {
      if (Player.cuchillazo(Esposo)) {
        Esposo.vida--;
      }
    }
  }

  void moverJugador2() {
    if (keyCode==UP) {
      ar = false;
    }
    if (keyCode==DOWN) {
      ab = false;
    }
    if (keyCode==LEFT) {
      iz = false;
    }
    if (keyCode==RIGHT) {
      de = false;
    }
  }
}

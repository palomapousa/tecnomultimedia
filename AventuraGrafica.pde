class Aventura {
  Botones botonDer;
  Botones botonIzq;
  Juego juego;
  Texto textos;
  int contador = 0;
  String pantalla;
  PImage [] fondos;
  PImage [] creditos;
  PImage [] inicio;
  PImage [] end;

  Aventura () {
    contador = 0;
    botonDer = new Botones ();
    botonIzq = new Botones ();
    textos = new Texto ();
    juego = new Juego ();
    pantalla = "inicio";
    fondos = new PImage [15];
    inicio = new PImage [23];
    end = new PImage [16];

    for (int e = 0; e < fondos.length; e++) {
      fondos [e] = loadImage("fondo_"+nf(e, 2)+".jpg");
    }
    for (int i = 0; i<16; i++) {
      end[i] = loadImage("frame_"+nf(i, 2)+"_delay-0.1s.jpg");
    }
    for (int j = 0; j<23; j++) {
      inicio[j] = loadImage ("gato_"+nf(j, 2)+"_delay-0.1s.jpg");
    }
  }


  void dibujarPantallas () {
    if (frameCount%8 ==1) {
      contador++;
    }
    if (pantalla.equals("inicio")) {
      push();
      imageMode(CENTER);
      image(inicio[contador%16], width/2, height/2);
      textAlign(CENTER);
      textSize(30);
      text("EL GATO NEGRO \nEdgar Allan Poe", width/2, 100);
      pop();
      botonDer.dibujarBoton("Iniciar", color(255, 0, 0), 20, width-220, height-69);
      botonIzq.dibujarBoton("Creditos", color(255, 0, 0), 20, 120, height-69);
    } else if (pantalla.equals("final1")) {
      textos.dibujarDialogos(0, 13, 20, 60, fondos[0]);
      botonDer.dibujarBoton("Siguiente", color(255, 0, 0), 20, width-220, height-69 );
    } else if (pantalla.equals("final1.1")) {
      textos.dibujarDialogos(1, 13, 20, 60, fondos[1]);
      botonDer.dibujarBoton("Siguiente", color(255, 0, 0), 20, width-220, height-69);
    } else if (pantalla.equals("final1.2")) {
      textos.dibujarDialogos(1, 13, 20, 60, fondos[1]);
      textos.dibujarDialogos(2, 16, width/4-30, 130, fondos[1]);
      botonDer.dibujarBoton("Ignorarlo", color(255, 0, 0), 20, width-220, height-69);
      botonIzq.dibujarBoton("Enfrentarlo", color(255, 0, 0), 18, 120, height-69);
      // camino final 1---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    } else if (pantalla.equals("final1.3")) { 
      textos.dibujarDialogos(3, 13, 20, 60, fondos[3]);
      botonDer.dibujarBoton("Siguiente", color(255, 0, 0), 20, width-220, height-69);
    } else if (pantalla.equals("final1.4")) {
      textos.dibujarDialogos(4, 13, 20, 60, fondos[4]);
      botonDer.dibujarBoton("Siguiente", color(255, 0, 0), 20, width-220, height-69);
    } else if (pantalla.equals("final1.5")) {
      textos.dibujarDialogos(5, 13, 20, 60, fondos[5]);
      textos.dibujarDialogos(6, 13, width/4-90, 130, fondos[5]);
      botonDer.dibujarBoton("Quedarse", color(255, 0, 0), 18, 120, height-69);
      botonIzq.dibujarBoton("Decide Huir", color(255, 0, 0), 18, width-220, height-69);
    } else if (pantalla.equals("final1.6")) {
      textos.dibujarDialogos(7, 13, 20, 60, fondos[6]);
      botonDer.dibujarBoton("Siguiente", color(255, 0, 0), 20, width-220, height-69);
    } else if (pantalla.equals("final1.7")) {
      textos.dibujarDialogos(8, 13, 20, 60, fondos[6]);
      botonDer.dibujarBoton("Siguiente", color(255, 0, 0), 20, width-220, height-69);
    } else if (pantalla.equals("final1.8")) {
      textos.dibujarDialogos(9, 13, 20, 60, fondos[7]);
      botonDer.dibujarBoton("Siguiente", color(255, 0, 0), 20, width-220, height-69);
      //camino final 2----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    } else if (pantalla.equals("final2")) {
      textos.dibujarDialogos(10, 13, 20, 60, fondos [8]);
      botonDer.dibujarBoton("Siguiente", color(255, 0, 0), 20, width-220, height-69);
      //camino final 3----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    } else if (pantalla.equals("final3")) {
      textos.dibujarDialogos(11, 13, 20, 60, fondos[2]);
      botonDer.dibujarBoton("Siguiente", color(255, 0, 0), 20, width-220, height-69);
    } else if (pantalla.equals("final3.1")) {
      textos.dibujarDialogos(12, 13, 20, 60, fondos[2]);
      textos.dibujarDialogos(13, 13, width/4+40, 130, fondos[2]);
      botonDer.dibujarBoton("Vengarse", color(255, 0, 0), 20, width-220, height-69);
      botonIzq.dibujarBoton("Pedir ayuda", color(255, 0, 0), 20, 120, height-69);
    } else if (pantalla.equals("final3.2")) {
      textos.dibujarDialogos(14, 13, 20, 100, fondos[9]);
      botonDer.dibujarBoton("Siguiente", color(255, 0, 0), 20, width-220, height-69);
    } else if (pantalla.equals("final3.2")) {
      textos.dibujarDialogos(15, 13, 10, 60, fondos[3]);
      botonDer.dibujarBoton("Siguiente", color(255, 0, 0), 20, width-220, height-69);
    } else if (pantalla.equals("final3.3")) {
      textos.dibujarDialogos(16, 13, 10, 60, fondos[10]);
      botonDer.dibujarBoton("Siguiente", color(255, 0, 0), 20, width-220, height-69);
    } else if (pantalla.equals("final3.4")) {
      textos.dibujarDialogos(17, 13, 20, 60, fondos[10]);
      textos.dibujarDialogos(18, 13, width/4-20, 130, fondos[10]);
      botonDer.dibujarBoton("Empujarlo", color(255, 0, 0), 20, width-220, height-69);
      botonIzq.dibujarBoton("Apuñalarlo", color(255, 0, 0), 20, 120, height-69);
    } else if (pantalla.equals("final3.5")) {
      textos.dibujarDialogos(19, 13, 20, 60, fondos[6]);
      botonDer.dibujarBoton("Siguiente", color(255, 0, 0), 20, width-220, height-69);
    } else if (pantalla.equals("final3.6")) {
      textos.dibujarDialogos(20, 13, 20, 60, fondos[6]);
      botonDer.dibujarBoton("Siguiente", color(255, 0, 0), 20, width-220, height-69);
    } else if (pantalla.equals("final3.7")) {
      textos.dibujarDialogos(21, 13, 20, 60, fondos[11]);
      botonDer.dibujarBoton("Siguiente", color(255, 0, 0), 20, width-220, height-69);
      //camino final 4----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    } else if (pantalla.equals("final4")) {
      juego.dibujarJuego();
      juego.moverPersonaje();
      if (juego.derrota() || juego.victoria()) {
        botonDer.dibujarBoton("Siguiente", color(255, 0, 0), 20, width-220, height-69);
      }
    } else if (pantalla.equals("final4.1")) {
      textos.dibujarDialogos(22, 13, 20, 60, fondos[13]);
      botonDer.dibujarBoton("Siguiente", color(255, 0, 0), 20, width-220, height-69);
    } else if (pantalla.equals("final4.2")) {
      textos.dibujarDialogos(21, 13, 20, 60, fondos[11]);
      botonDer.dibujarBoton("Siguiente", color(255, 0, 0), 20, width-220, height-69);
      //camino final 5----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    } else if (pantalla.equals("final5")) {
      textos.dibujarDialogos(23, 13, 20, 60, fondos[14]);
      botonDer.dibujarBoton("Siguiente", color(255, 0, 0), 20, width-220, height-69);
      //pantalla fin ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    } else if (pantalla.equals("Fin")) {
      pushStyle();
      imageMode(CENTER);
      image(end[contador%16], width/2, height/2);
      botonDer.dibujarBoton("Inicio", color(255, 0, 0), 20, width-220, height-69);
      popStyle();
      //pantalla creditos -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    } else if (pantalla.equals("creditos")) {
      pushStyle();
      textAlign(CENTER, CENTER);
      imageMode(CENTER);
      textSize(25);
      text(" 'El gato negro' Edgar Allan Poe \nTecnología Multimedial I\n Comisión 1\n TP: Pousa Paloma 88138/5\nDocente: José Luis Bugiolachi", width/2, height/2);
      popStyle();
      botonDer.dibujarBoton("Inicio", color(255, 0, 0), 20, width-220, height-69);
    }
  }

  void keycode () {
    juego.moverJugador();
  }

  void keycode2() {
    juego.moverJugador2();
  }

  void mouseclicked () {
    if (botonDer.mouseOver() && pantalla.equals("inicio")) {
      pantalla = "final1";
    } else if (botonIzq.mouseOver() && pantalla.equals("inicio")) {
      pantalla = "creditos";
    } else if (botonDer.mouseOver() && pantalla.equals("final1")) {
      pantalla = "final1.1";
    } else if (botonDer.mouseOver() && pantalla.equals("final1.1")) {
      pantalla = "final1.2";
    } else if (botonDer.mouseOver() && pantalla.equals("final1.2")) {
      pantalla = "final1.3";
    } else if (botonDer.mouseOver() && pantalla.equals("final1.3")) {
      pantalla = "final1.4";
    } else if (botonDer.mouseOver() && pantalla.equals("final1.4")) {
      pantalla = "final1.5";
    } else if (botonDer.mouseOver() && pantalla.equals("final1.5")) {
      pantalla = "final1.6";
    } else if (botonDer.mouseOver() && pantalla.equals("final1.6")) {
      pantalla = "final1.7";
    } else if (botonDer.mouseOver() && pantalla.equals("final1.7")) {
      pantalla = "final1.8";
      //camino final 2 ---------------------------------------------------------------------------------------------------------
    } else if (botonIzq.mouseOver() && pantalla.equals("final1.5")) {
      pantalla = "final2";
      //Camino final 3 ---------------------------------------------------------------------------------------------------------
    } else if (botonIzq.mouseOver() && pantalla.equals("final1.2")) {
      pantalla = "final3";
    } else if (botonDer.mouseOver() && pantalla.equals("final3")) {
      pantalla = "final3.1";
    } else if (botonDer.mouseOver() && pantalla.equals("final3.1")) {
      pantalla = "final3.2";
    } else if (botonDer.mouseOver() && pantalla.equals("final3.2")) {
      pantalla = "final3.3";
    } else if (botonDer.mouseOver() && pantalla.equals("final3.3")) {
      pantalla = "final3.4";
    } else if (botonDer.mouseOver() && pantalla.equals("final3.4")) {
      pantalla = "final3.5";
    } else if (botonDer.mouseOver() && pantalla.equals("final3.5")) {
      pantalla = "final3.6";
    } else if (botonDer.mouseOver() && pantalla.equals("final3.6")) {
      pantalla = "final3.7";
      //Camino final 4 ---------------------------------------------------------------------------------------------------------
    } else if (botonIzq.mouseOver() && pantalla.equals("final3.4")) {
      pantalla = "final4";
    } else if (botonDer.mouseOver() && pantalla.equals("final4")) {
      if (juego.victoria()) {
        pantalla = "final4.1";
      }
      if (juego.derrota()) {
        pantalla = "final2";
      }
    } else if (botonDer.mouseOver() && pantalla.equals("final4.1")) {
      pantalla = "final4.2";
      //Camino final 4 ---------------------------------------------------------------------------------------------------------
    } else if (botonIzq.mouseOver() && pantalla.equals("final3.1")) {
      pantalla = "final5";
      //pantalla final ---------------------------------------------------------------------------------------------------------
    } else if (botonDer.mouseOver() && pantalla.equals("final1.8") || pantalla.equals("final2")  || pantalla.equals("final3.7") || pantalla.equals("final4.2") || pantalla.equals("final5")) {
      pantalla = "Fin";
    } else if (botonDer.mouseOver() && pantalla.equals("Fin")) {
      pantalla = "inicio";
      //pantalla creditos ------------------------------------------------------------------------------------------------------
    } else if (botonDer.mouseOver() && pantalla.equals("creditos")) {
      pantalla = "inicio";
    }
  }
}

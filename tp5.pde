/* 
 Tecnología Multimedial I
 Comisión 1
 Alumno: Paloma Pousa
 Legajo: 88138/5
 Docente: José Luis Bugiolachi
 Video de youtube: https://youtu.be/Es-M3of2IMY
 Link de respaldo: https://www.youtube.com/watch?v=Es-M3of2IMY&feature=youtu.be
*/
Juego game;
void setup() {
  size(800, 500);
  game = new Juego();
}

void draw() {
  background(0);
  game.dibujarJuego();
  game.moverPersonaje();
}

void keyPressed() {
  if (game.jugando) {
    game.moverJugador();
  }
}

void keyReleased() {
  if (game.jugando) {
    game.moverJugador2();
  }
}

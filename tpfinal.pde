/* 
 Tecnología Multimedial I
 Comisión 1
 Alumno: Paloma Pousa
 Legajo: 88138/5
 Docente: José Luis Bugiolachi
 Video de youtube: https://youtu.be/1ypKL9lti4I
 Link de respaldo: https://www.youtube.com/watch?v=1ypKL9lti4I
*/

import processing.sound.*;
SoundFile sonido;
Aventura aventura;

void setup () {
  size (800, 500);
  aventura = new Aventura ();
  sonido = new SoundFile(this, "sonido.mp3");
  sonido.amp(0.1); 
  sonido.loop();
}

void draw () {
  background (0);
  aventura.dibujarPantallas();
}

void mouseReleased() {
  aventura.mouseclicked();
}

void keyPressed() {
  aventura.keycode();
}

void keyReleased() {
  aventura.keycode2();
}

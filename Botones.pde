class Botones {
  int px;
  int py;
  int btam;
  Botones () {
  }

  void dibujarBoton(String texto, color tinte, int tamb, int posx, int posy) {
    if (mouseOver()) {
      fill(150, 0, 0);
    } else {
      fill(tinte);
    }
    px = posx;
    py = posy;
    btam = tamb;
    rect (posx, posy, tamb*4, tamb, width/4);
    fill (255);
    textSize(tamb/3*2);
    text (texto, posx+tamb-5, posy+tamb-5);
  }

  boolean mouseOver() {
    if (mouseX > px && mouseX<px+btam*4 && mouseY>py && mouseY<py+btam) {
      return true;
    } else {
      return false;
    }
  }
}

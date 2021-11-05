class Botones {

  Botones () {
  }

  void dibujarBoton(String texto, color tinte, int tam, int posx, int posy, int postx, int posty) {
    if (mouseOver(posx, posy)) {
      fill(150, 0, 0);
    } else {
      fill(tinte);
    }
    rect (posx, posy, 150, 50, width/4);
    fill (255);
    textSize(tam);
    text (texto, postx, posty);
  }
  
  boolean mouseOver(int posx, int posy) {
    if (mouseX > posx && mouseX<posx+150 && mouseY>posy && mouseY<posy+50) {
      return true;
    } else {
      return false;
    }
  }
}

void dialogos (String texto, int tam, int posx, int posy, PImage fondos) {
  fill (255);
  textSize(tam);
  text (texto, posx, posy);
  imageMode(CENTER);
  image(fondos, width/2, height-150, 450, 400);
}

void botones(String texto, color tinte, int tam, int posx, int posy) {
  if (mouseOver(posx, posy)) {
    fill(150, 0, 0);
  } else {
    fill(tinte);
  }
  rect (posx-30, posy-30, 150, 50, width/4);
  fill (255);
  textSize(tam);
  text (texto, posx, posy);
}

boolean mouseOver(int posx, int posy) {
  if (mouseX > posx-30 && mouseX<posx-30+150 && mouseY>posy-30 && mouseY<posy-30+50) {
    return true;
  } else {
    return false;
  }
}

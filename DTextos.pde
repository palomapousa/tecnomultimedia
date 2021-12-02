class Texto {
  String [] dialogos;

  Texto () {
    dialogos = loadStrings ("dialogos.txt");
  }

  void dibujarDialogos (int indice, int tam, int posx, int posy, PImage fondos) {
    fill (255);
    textSize(tam);
    text (dialogos[indice], posx, posy);
    imageMode(CENTER);
    image(fondos, width/2, height-150, 450, 400);
  }
}

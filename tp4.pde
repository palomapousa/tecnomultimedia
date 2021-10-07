/* 
 Tecnología Multimedial I
 Comisión 1
 Alumno: Paloma Pousa
 Legajo: 88138/5
 Docente: José Luis Bugiolachi
 Video de youtube: https://youtu.be/VKbXS6Jv6xA
 Link de respaldo: https://www.youtube.com/watch?v=VKbXS6Jv6xA
 */
PImage[] fondos;
PImage[] end;
PImage[] inicio;
PImage[] creditos;
String pantalla;
int contador;

void setup () {
  size (800, 500);
  pantalla = "inicio";
  contador = 0;
  end = new PImage [16];
  inicio = new PImage [23];
  fondos = new PImage [15];
  creditos = new PImage [16];

  for (int e = 0; e < fondos.length; e++) {
    fondos [e] = loadImage("fondo_"+nf(e, 2)+".jpg");
  }

  // con estos for se cargan las imágenes para realizar falsogifs
  for (int i = 0; i<16; i++) {
    end[i] = loadImage("frame_"+nf(i, 2)+"_delay-0.1s.jpg");
    println(nf(i, 2));
  }
  for (int j = 0; j<23; j++) {
    inicio[j] = loadImage ("gato_"+nf(j, 2)+"_delay-0.1s.jpg");
  }
  for (int f = 0; f<16; f++) {
    creditos[f] = loadImage ("cat_"+nf(f, 2)+"_delay-0.03s.jpg");
  }
}

void draw () {
  background (0);
  // este frameCount tiene la finalidad de reducir la velocidad con la que se estaba reproduciendo el falsogif
  if (frameCount%8 ==1) {
    contador++;
  }
  if (pantalla.equals("inicio")) {
    pushStyle();
    textSize(40);
    textAlign(CENTER);
    imageMode(CENTER);
    image(inicio[contador%16], width/2, height/2);
    text ("El gato negro", width/2, height/4-60);
    fill (255, 0, 0);
    textSize(20);
    rect (width-700, height-70, 150, 50, width/4);
    rect (width-250, height-70, 150, 50, width/4);
    fill(255);
    text("Creditos", width-625, height-39);
    text("Inicio", width-175, height-39);
    popStyle();
  } else if (pantalla.equals("final1")) {
    dialogos("Erase una vez un matrimonio feliz, amante de los animales, desde pericos hasta perros, \npero sin duda, el favorito de la pareja era su gato negro, Pluto.", 14, 50, 60, fondos[0]);
    botones("Siguiente", color(255, 0, 0), 20, width-220, height-69 );
  } else if (pantalla.equals("final1.1")) {
    dialogos("Sin embargo, al pasar los años, \nel esposo comenzó a tener problemas con el alcohol y actitudes agresivas, pero jamás hacia Pluto.", 14, 50, 60, fondos[1]);
    botones("Siguiente", color(255, 0, 0), 20, width-220, height-69);
  } else if (pantalla.equals("final1.2")) {
    dialogos("Sin embargo, al pasar los años, \nel esposo comenzó a tener problemas con el alcohol y actitudes agresivas, pero jamás hacia Pluto.", 14, 50, 60, fondos[1]);
    dialogos("¿La esposa decide enfrentarse a la situación o ignorarla?", 16, width/4-30, 130, fondos[1]);
    botones("Ignorarlo", color(255, 0, 0), 20, width-220, height-69);
    botones("Enfrentarlo", color(255, 0, 0), 18, 120, height-69);
    // camino final 1---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  } else if (pantalla.equals("final1.3")) { 
    dialogos("Una noche, perdido en el alcohol, el esposo toma al gato del pellejo y lo ahorca.", 14, 50, 60, fondos[3]);
    botones("Siguiente", color(255, 0, 0), 20, width-220, height-69);
  } else if (pantalla.equals("final1.4")) {
    dialogos("En una noche de borrachera el esposo encuentra un gato muy cariñoso \nque resultaba ser idéntico a Pluto, el animal lo sigue hasta su hogar.", 14, 50, 60, fondos[4]);
    botones("Siguiente", color(255, 0, 0), 20, width-220, height-69);
  } else if (pantalla.equals("final1.5")) {
    dialogos("Cansado de su presencia, un día en el sótano toma un hacha buscando matar al animal, \npero su esposa se interpone para evitar el ataque. \nEl esposo, cegado por la ira, hunde el hacha en la cabeza de su esposa.", 14, 50, 60, fondos[5]);
    dialogos("¿El esposo decide huir del país o quedarse en su hogar e intentar limpiar los rastros?", 14, width/4-90, 130, fondos[5]);
    botones("Decide Huir", color(255, 0, 0), 18, 120, height-69);
    botones("Quedarse", color(255, 0, 0), 18, width-220, height-69);
  } else if (pantalla.equals("final1.6")) {
    dialogos("El esposo decide limpiar los rastros de su crimen, \nesconde el cadáver de su esposa detrás de una pared de ladrillo. \nEl gato desaparece completamente. El esposo se encuentra feliz.", 14, 50, 60, fondos[6]);
    botones("Siguiente", color(255, 0, 0), 20, width-220, height-69);
  } else if (pantalla.equals("final1.7")) {
    dialogos("Al cuarto día tras el crimen, la policía entran al hogar a verificar, y casi se van sin encontrar pruebas. \nPero de repente, se escucha detrás de la pared un quejido, \nparecido a un llanto, que rápidamente se convierte en un maullido", 14, 50, 60, fondos[6]);
    botones("Siguiente", color(255, 0, 0), 20, width-220, height-69);
  } else if (pantalla.equals("final1.8")) {
    dialogos("Los policías abren la pared, y al hacerlo hallan el cadáver de su esposa. \nEncima de ella, con el ojo de fuego, se encontraba Pluto.", 14, 50, 60, fondos[7]);
    botones("Siguiente", color(255, 0, 0), 20, width-220, height-69);
    //camino final 2----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  } else if (pantalla.equals("final2")) {
    dialogos("El esposo decide huir para nunca volver, y vive una vida feliz y plena, libre de culpas.", 14, 50, 60, fondos [8]);
    botones("Siguiente", color(255, 0, 0), 20, width-220, height-69);
    //camino final 3----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  } else if (pantalla.equals("final3")) {
    dialogos("La esposa comienza a enfrentarlo, lo que desencadena \nataques de ira constantes y cada vez más violentos.", 14, 50, 60, fondos[2]);
    botones("Siguiente", color(255, 0, 0), 20, width-220, height-69);
  } else if (pantalla.equals("final3.1")) {
    dialogos("Una noche, completamente borracho, el esposa la toma a la fuerza y le corta la lengua por responderle.", 14, 50, 60, fondos[2]);
    dialogos("¿La esposa decide acudir a la policía o vengarse?", 14, width/4+40, 130, fondos[2]);
    botones("Vengarse", color(255, 0, 0), 20, width-220, height-69);
    botones("Pedir ayuda", color(255, 0, 0), 17, 120, height-69);
  } else if (pantalla.equals("final3.2")) {
    dialogos("El hecho genera en la esposa un enorme resentimiento, lo que le genera deseos de venganza.", 14, 50, 100, fondos[9]);
    botones("Siguiente", color(255, 0, 0), 20, width-220, height-69);
  } else if (pantalla.equals("final3.2")) {
    dialogos("Una noche,  el esposo toma a Pluto del pellejo y lo apuñala en el ojo.", 14, 50, 60, fondos[3]);
    botones("Siguiente", color(255, 0, 0), 20, width-220, height-69);
  } else if (pantalla.equals("final3.3")) {
    dialogos("Esto lleva a que tanto la esposa como Pluto formen un vínculo. \nA su vez, esto consigue nada más que enojar más a la esposa.", 14, 50, 60, fondos[10]);
    botones("Siguiente", color(255, 0, 0), 20, width-220, height-69);
  } else if (pantalla.equals("final3.4")) {
    dialogos("Es por ello que la esposa decide finalmente acabar con la vida de su pareja.", 14, 50, 60, fondos[10]);
    dialogos("¿La esposa decide apuñalarlo o empujarlo por las escaleras?", 14, width/4-20, 130, fondos[10]);
    botones("Empujarlo por las escaleras", color(255, 0, 0), 8, width-220, height-69);
    botones("Apuñalarlo", color(255, 0, 0), 17, 120, height-69);
  } else if (pantalla.equals("final3.5")) {
    dialogos("Una noche, la mujer espera a que su esposo baje al sótano a buscar barriles de cerveza para empujarlo, \nél cae por las escaleras del sótano y muere al instante.", 14, 50, 60, fondos[6]);
    botones("Siguiente", color(255, 0, 0), 20, width-220, height-69);
  } else if (pantalla.equals("final3.6")) {
    dialogos("La esposa, al verlo, decide limpiar los rastros de su crimen, \nasí que coloca el cadaver tras una pared de ladrillo.", 14, 50, 60, fondos[6]);
    botones("Siguiente", color(255, 0, 0), 20, width-220, height-69);
  } else if (pantalla.equals("final3.7")) {
    dialogos("Al cuarto día después del crimen, los policías \nentran al hogar para verificar, y se van sin encontrar pruebas, \nno sin antes acariciar suavemente a Pluto.", 14, 50, 60, fondos[11]);
    botones("Siguiente", color(255, 0, 0), 20, width-220, height-69);
    //camino final 4----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  } else if (pantalla.equals("final4")) {
    dialogos("Una noche, la esposa espera pacientemente a que su pareja quede inconsciente de tanta bebida,\ny procede a apuñalarlo múltiples veces en el abdomen.", 14, 50, 60, fondos[12]);
    botones("Siguiente", color(255, 0, 0), 20, width-220, height-69);
  } else if (pantalla.equals("final4.1")) {
    dialogos("La esposa, al verlo, decide limpiar los rastros de su crimen, \nasí que entierra los restos en el jardín de su hogar.", 14, 50, 60, fondos[13]);
    botones("Siguiente", color(255, 0, 0), 20, width-220, height-69);
  } else if (pantalla.equals("final4.2")) {
    dialogos("Al cuarto día después del crimen, los policías entran al hogar para verificar, \ny se van sin encontrar pruebas, no sin antes acariciar suavemente a Pluto.", 14, 50, 60, fondos[11]);
    botones("Siguiente", color(255, 0, 0), 20, width-220, height-69);
    //camino final 5----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  } else if (pantalla.equals("final5")) {
    dialogos("La mujer decide acudir a la policía, el esposo es acusado, \nllevado a la cárcel y posteriormente condenado a muerte.", 14, 50, 60, fondos[14]);
    botones("Siguiente", color(255, 0, 0), 20, width-220, height-69);
    //pantalla fin ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  } else if (pantalla.equals("Fin")) {
    pushStyle();
    imageMode(CENTER);
    image(end[contador%16], width/2, height/2);
    botones("Volver al inicio", color(255, 0, 0), 14, width-220, height-69);
    popStyle();
    //pantalla creditos -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  } else if (pantalla.equals("creditos")) {
    pushStyle();
    textAlign(CENTER, CENTER);
    imageMode(CENTER);
    image(creditos[contador%16], width/2, height/2);
    textSize(25);
    text(" 'El gato negro' Edgar Allan Poe \n TP: Pousa Paloma 88138/5", width/2, height/2-180);
    popStyle();
    botones("Volver al inicio", color(255, 0, 0), 14, width-220, height-69);
  }
  println(pantalla);
}


void mouseReleased() {
  //camino final 1 -----------------------------------------------------------------------------------------------------------
  if (mouseX > width-250 && mouseX<width-100 && mouseY>height-70 && mouseY<height-20 && pantalla.equals("inicio")) {
    pantalla = "final1";
  } else if (mouseX > width-250 && mouseX<width-100 && mouseY>height-100 && mouseY<height-50 && pantalla.equals("final1")) {
    pantalla = "final1.1";
  } else if (mouseX > width-250 && mouseX<width-100 && mouseY>height-100 && mouseY<height-50 && pantalla.equals("final1.1")) {
    pantalla = "final1.2";
  } else if (mouseX > width-250 && mouseX<width-100 && mouseY>height-100 && mouseY<height-50 && pantalla.equals("final1.2")) {
    pantalla = "final1.3";
  } else if (mouseX > width-250 && mouseX<width-100 && mouseY>height-100 && mouseY<height-50 && pantalla.equals("final1.3")) {
    pantalla = "final1.4";
  } else if (mouseX > width-250 && mouseX<width-100 && mouseY>height-100 && mouseY<height-50 && pantalla.equals("final1.4")) {
    pantalla = "final1.5";
  } else if (mouseX > width-250 && mouseX<width-100 && mouseY>height-100 && mouseY<height-50 && pantalla.equals("final1.5")) {
    pantalla = "final1.6";
  } else if (mouseX > width-250 && mouseX<width-100 && mouseY>height-100 && mouseY<height-50 && pantalla.equals("final1.6")) {
    pantalla = "final1.7";
  } else if (mouseX > width-250 && mouseX<width-100 && mouseY>height-100 && mouseY<height-50 && pantalla.equals("final1.7")) {
    pantalla = "final1.8";
    //camino final 2 ---------------------------------------------------------------------------------------------------------
  } else if (mouseX > 100 && mouseX<240 && mouseY>height-100 && mouseY<height-50 && pantalla.equals("final1.5")) {
    pantalla = "final2";
    //Camino final 3 ---------------------------------------------------------------------------------------------------------
  } else if (mouseX > 100 && mouseX<240 && mouseY>height-100 && mouseY<height-50 && pantalla.equals("final1.2")) {
    pantalla = "final3";
  } else if (mouseX > width-250 && mouseX<width-100 && mouseY>height-100 && mouseY<height-50 && pantalla.equals("final3")) {
    pantalla = "final3.1";
  } else if (mouseX > width-250 && mouseX<width-100 && mouseY>height-100 && mouseY<height-50 && pantalla.equals("final3.1")) {
    pantalla = "final3.2";
  } else if (mouseX > width-250 && mouseX<width-100 && mouseY>height-100 && mouseY<height-50 && pantalla.equals("final3.2")) {
    pantalla = "final3.3";
  } else if (mouseX > width-250 && mouseX<width-100 && mouseY>height-100 && mouseY<height-50 && pantalla.equals("final3.3")) {
    pantalla = "final3.4";
  } else if (mouseX > width-250 && mouseX<width-100 && mouseY>height-100 && mouseY<height-50 && pantalla.equals("final3.4")) {
    pantalla = "final3.5";
  } else if (mouseX > width-250 && mouseX<width-100 && mouseY>height-100 && mouseY<height-50 && pantalla.equals("final3.5")) {
    pantalla = "final3.6";
  } else if (mouseX > width-250 && mouseX<width-100 && mouseY>height-100 && mouseY<height-50 && pantalla.equals("final3.6")) {
    pantalla = "final3.7";
    //Camino final 4 ---------------------------------------------------------------------------------------------------------
  } else if (mouseX > 100 && mouseX<240 && mouseY>height-100 && mouseY<height-50 && pantalla.equals("final3.4")) {
    pantalla = "final4";
  } else if (mouseX > width-250 && mouseX<width-100 && mouseY>height-100 && mouseY<height-50 && pantalla.equals("final4")) {
    pantalla = "final4.1";
  } else if (mouseX > width-250 && mouseX<width-100 && mouseY>height-100 && mouseY<height-50 && pantalla.equals("final4.1")) {
    pantalla = "final4.2";
    //Camino final 4 ---------------------------------------------------------------------------------------------------------
  } else if (mouseX > 100 && mouseX<240 && mouseY>height-100 && mouseY<height-50 && pantalla.equals("final3.1")) {
    pantalla = "final5";
    //pantalla final ---------------------------------------------------------------------------------------------------------
  } else if (mouseX > width-250 && mouseX<width-100 && mouseY>height-100 && mouseY<height-50 && pantalla.equals("final1.8") || pantalla.equals("final2")  || pantalla.equals("final3.7") || pantalla.equals("final4.2") || pantalla.equals("final5")) {
    pantalla = "Fin";
  } else if (mouseX > width-250 && mouseX<width-100 && mouseY>height-100 && mouseY<height-50 && pantalla.equals("Fin")) {
    pantalla = "inicio";
    //pantalla creditos ------------------------------------------------------------------------------------------------------
  } else if (mouseX > 100 && mouseX<240 && mouseY>height-70 && mouseY<height-20 && pantalla.equals("inicio")) {
    pantalla = "creditos";
  } else if (mouseX > width-250 && mouseX<width-100 && mouseY>height-100 && mouseY<height-50 && pantalla.equals("creditos")) {
    pantalla = "inicio";
  }
}

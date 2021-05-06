size (400,360);
background(0);

fill(255);
ellipse(200,180,320,320);

//COLORES TERCIARIOS

//triángulo violeta
fill(159, 0, 255);
triangle(120,215,120,135,60,180);

//triángulo lima
fill(158, 253, 56);
triangle(280,130,340,180,280,210);

//triángulo cerúleo
fill(58, 161, 193);
triangle(130,230,130,320,190,290);

//triángulo fucsia
fill (245, 0, 135);
triangle(130,120,130,40,190,80);

//triángulo naranja
fill(255, 165, 0);
triangle(210,80,270,40,270,120);

//triángulo verde cian
fill(0, 250, 154);
triangle(200,285,270,320,270,240);


// COLORES PRIMARIOS

//triángulo rojo
fill(255,0,0);
triangle (160,100,200,20,240,100);

//triángulo verde
fill(0,255,0);
triangle(240,260,280,180,320,260);

//triángulo azul
fill(0,0,255);
triangle (80,260,120,180,160,260);

//COLORES SECUNDARIOS

//triángulo amarillo
fill(255, 233, 0);
triangle(240,100,280,180,320,100);

//triángulo magenta
fill (206, 70, 118);
triangle(80,100,120,180,160,100);

//triángulo cian
fill(0,255,255);
triangle(160,260,200,340,240,260);

//líneas decorativas interiores
line(200,100,140,220); //rojo y azul
line(140,220,260,220); //azul y verde
line(260,220,200,100); //rojo y verde
line(200,100,200,260); //rojo y cian
line(140,140,260,220); //verde y magenta
line(140,220,260,140); //azul y amarillo

//líneas decorativas exteriores
line(130,40,200,20); // fucsia y rojo
line(200,20,270,40); // rojo y naranja
line(270,40,320,100); // naranja y amarillo
line(320,100,340,180); //amarillo y lima
line(340,180,320,260); // lima y verde
line(320,260,270,320); // verde y cian verdoso
line(270,320,200,340); // cian verdoso y cian
line(200,340,130,320); // cian y cerúlo
line(130,320,80,260); // cerúlo y azul
line(80,260,60,180); // azul y violeta
line(60,180,80,100); // violeta y magenta
line(80,100,130,40); // magenta y fucsia

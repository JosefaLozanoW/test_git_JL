//Movimiento Circular
float vel = .0; 
float  centroX;
float  centroY;
float sz = 10;
float diam = 50;


void setup() {
  size(1000, 800);
  background(0, 0, 250);
  smooth();
  centroX = width/2;
  centroY = height/2;
}


void draw () {
  background(0, 0, 250);
  stroke(0);
  smooth();

  //linea central
  line(0, height/2, width, height/2);

  //planetas
  planeta(centroX, centroY, 40, 5, vel*1.3, "Mercurio");
  planeta(centroX, centroY, 60, 7, vel*1.1, "Venus");
  planeta(centroX, centroY, 90, 8, vel, "Tierra");

  planeta(centroX, centroY, 220, 28, vel*.2, "Jupiter");
  planeta(centroX, centroY, 270, 22, vel*.08, "Saturno");

  planeta(centroX, centroY, 330, 16, vel*.05, "Urano");
  planeta(centroX, centroY, 380, 14, vel*.09, "Neptuno");

  vel += .01  ; //PASOS PARA EL ANGULO

}//cierre draw



//Funcion, definicion de planeta
void planeta(float px, float py, float pd, float psz, float pa, String pnombre) {

  //Para pos x e y del la ellipse 
  float x = px + sin(pa) * pd ;
  float y = py + cos(pa) * pd ;

  //centro orbita, donde estaria el sol
  fill(250, 150);
  stroke(250);//color lineas
  ellipse(px, py, 2, 2);

  //circulo orbita
  noFill();
  stroke(0, 255);//color linea
  ellipse(px, py, pd*2, pd*2);

  //dibujar la bolita
  fill(250, 150);
  stroke(250);//color lineas
  ellipse(x, y, psz, psz);

  //nombre
  noStroke();
  fill(0, 0, 250, 100);  
  rect(x+psz-2, y, textWidth(pnombre)+6, 14 );
  fill(250);  
  textSize(10);
  text(pnombre, x+psz, y+12 );
}

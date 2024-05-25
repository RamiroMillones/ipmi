//Ramiro Millones tp2 comision 1

PImage imagenuno;
PImage imagendos;
PImage imagentres;
PFont fuente;
String textouno;
String textodos;
String textotres;
int MiVariable = 1;
int py;
int px;
boolean activo;
int reiniciarX;
int reiniciarY;
int reiniciarAncho;
int reiniciarAlto;
boolean mostrarTextoUno;
boolean mostrarTextoDos;
boolean mostrarTextoTres;
boolean mostrarBoton;
int transparencia = 0;

void setup() {
  size(640, 480);
  reiniciarX = width/2 - 50;
  reiniciarY = height - 50;
  reiniciarAncho = 100;
  reiniciarAlto = 40;
  mostrarTextoUno = true;
  mostrarTextoDos = false;
  mostrarTextoTres = false;
  mostrarBoton = false;
  textouno = "The Amazing Spider-Man (titulada El sorprendente Hombre Araña en Hispanoamérica) es un reinicio de las películas de Spider-Man. La película fue dirigida por Marc Webb. El reparto incluye a Andrew Garfield como Peter Parker, Emma Stone como Gwen Stacy y Rhys Ifans como el Dr. Curt Connors. La película retrata a Peter Parker desarrollando sus superpoderes en el instituto.";
  textodos = "El desarrollo de la película comenzó simultáneamente cuando Sony anunció la cancelación de Spider-Man 4. Optando por un reinicio en lugar de otra secuela, el estudio anunció la fecha de lanzamiento para julio de 2012 bajo el título The Amazing Spider-Man.";
  textotres = "The Amazing Spider-Man fue lanzada en 3D y en IMAX 3D el 3 de julio de 2012 en Estados Unidos y progresivamente a lo largo de esa misma semana en el resto de países hispanohablantes.1​ También se desarrolló el videojuego de la película que salió al mercado días antes del estreno.";
  py = height;
  px = width;
  imagenuno = loadImage("spiderman1.png");
  imagenuno.resize(640, 480);
  imagendos = loadImage("spiderman2.jpg");
  imagentres = loadImage("spiderman3.png");
  image(imagenuno, 0, 0);
  fuente = loadFont("Gadugi.vlw");
  textFont(fuente, 25);
}

void draw() {
  image(imagenuno, 0, 0, 640, 480);
  MiVariable = frameCount;
  if (frameCount > 500) {    
    image(imagendos, 0, 0, 640, 480);
    mostrarTextoUno = false;
    mostrarTextoDos = true;
  }
  if (frameCount > 1000) {
    image(imagentres, 0, 0, 640, 480);
    mostrarTextoDos = false;
    mostrarTextoTres = true;
    mostrarBoton = true;
  }
  textAlign(CENTER, CENTER);
  textAlign(CENTER);
  if (mostrarTextoUno) {
    fill(255);
    text(textouno, 100, py, 440, 400);
    if (py > 100) {
      py--;
    }
  }
  
  textAlign(CENTER, CENTER);
  textAlign(LEFT);
  if (mostrarTextoDos) {
    fill(255);
    text(textodos, px, 100, 440, 400);
    if (px > 100) {
      px--;
    }
  }

  textAlign(CENTER, CENTER);
  textAlign(CENTER);
  if (mostrarTextoTres) {
    fill(255, transparencia);
    text(textotres, 100, 100, 440, 400);
    if (transparencia < 255) {
      transparencia += 1;
    }
  }
  if (mostrarBoton) {
    fill(200);
    rect(reiniciarX, reiniciarY, reiniciarAncho, reiniciarAlto);
    fill(0);
    textAlign(CENTER, CENTER);
    text("Reiniciar", reiniciarX + reiniciarAncho/2, reiniciarY + reiniciarAlto/2);
    if (mouseX > reiniciarX && mouseX < reiniciarX + reiniciarAncho && 
        mouseY > reiniciarY && mouseY < reiniciarY + reiniciarAlto &&
        mousePressed) {
      reiniciar();
    }
  }
}

void reiniciar() {
  py = height;
  px = width;
  MiVariable = 1;
  mostrarTextoUno = true;
  mostrarTextoDos = false;
  mostrarTextoTres = false;
  mostrarBoton = false;
  frameCount = 0;
  transparencia = 0;
  image(imagenuno, 0, 0, 640, 480);
}
